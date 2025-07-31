Select * from crime_scene_report

select * from crime_scene_report
where date = 20180115 and city ='SQL City'

/* Security footage shows that there were 2 witnesses. 
The first witness lives at the last house on "Northwestern Dr". 
The second witness, named Annabel, lives somewhere on "Franklin Ave".*/

select * from person

select * from person
where address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC

select address_street_name ,MAX (address_number) from person
group by address_street_name
having address_street_name = 'Northwestern Dr'

select * from person
where address_number = '4919'

/* The first witness is Morty Schapiro whose ID no is 14887 and license id 118009 */
select * from person
where name like 'Annabel%'
and address_street_name ='Franklin Ave'

/* our second witness is Annabel Miller with id no- 16371 */

select * from interview
where person_id = '16371'

/* Witness one said I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. 
The membership number on the bag started with "48Z". Only gold members have those bags. 
The man got into a car with a plate that included "H42W".*/

/* Witness two said I saw the murder happen, 
and I recognized the killer from my gym when I was working out last week on January the 9th.*/

select * from get_fit_now_member
where ID like '%48Z%'
and membership_status = 'gold'

/*Suspect 1; Joe Germuska with person id 28819, membership start date 20160305 and gold membership status
Suspect 2; Jeremy Bowers with person id 67318, membership start date 20160101 and gold membership status*/

Select * from get_fit_now_check_in
where check_in_date =20180109
and membership_id in ('48Z7A' , '48Z55')

/*lets join drivers license table to person table*/

Select dl.age, dl.height, dl.hair_color, dl.gender, dl.plate_number, dl.car_make, dl.car_model, p.name, p.ssn, p.address_street_name, p.id
       from drivers_license as dl
	   left join person as p
	   on dl.id = p.license_id
	   
	   
2W%'or plate_number like 'H42w%'or plate_number like '%H42W'

/* The killer is Jeremy Bowers*/
where plate_number like '%H4

/*Congrats, you found the murderer! But wait, there's more...
If you think you're up for a challenge, try querying the interview transcript of the murderer
to find the real villain behind this crime.
If you feel especially confident in your SQL skills, 
try to complete this final step with no more than 2 queries. 
Use this same INSERT statement with your new suspect to check your answer.*/

select * from person
where name = 'Jeremy Bowers'

/*The killers ID is 67318*/

select * from interview
where person_id = '67318'

/* The killer said I was hired by a woman with a lot of money.
I don't know her name but I know she's around 5'5" (65") or 5'7" (67").
She has red hair and she drives a Tesla Model S.
I know that she attended the SQL Symphony Concert 3 times in December 2017.*/

select * from drivers_license
where height between 65 and 67
and hair_color = 'red'
and gender = 'female'
and car_make = 'Tesla'

create table Suspect as(
select * from drivers_license
where height between 65 and 67
and hair_color = 'red'
and gender = 'female'
and car_make = 'Tesla'	
)

select * from suspect

--202298, 291182, 918773

select * from facebook_event_checkin
where event_name = 'SQL Symphony Concert'
and date between 20171201 and 20171231

select * from person

select s.id, s.age, s.height,
       p.id as person_id, p.name, p.address_street_name, p.ssn
	   from suspect as s
	   right join person as p
	   on s.id = p.license_id

--person id of the three killers are 99716, 90700, 78881

select * from facebook_event_checkin
where event_name = 'SQL Symphony Concert'
and date between 20171201 and 20171231
and person_id in ( 99716, 90700, 78881)

--The  suspect id is 99716

select * from person
where id = '99716'
/* Miranda priestly is the suspect*/
	   
