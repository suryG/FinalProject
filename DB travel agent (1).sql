create database travel_agent;
go
use travel_agent
go
create table users(
user_tz nvarchar(9) primary key ,
firstName nvarchar(10) not null,
lastName nvarchar(10) not null,
pasword nvarchar(20) not null,
email nvarchar(20) not null
)
go
create table hotels(
hotel_code nvarchar(9) primary key,
hotel_name nvarchar(10),
hotel_country nvarchar(10),
hotel_city nvarchar(10),
hotel_address nvarchar(10),
hotel_number int,
number_of_stars int
)
go
create table room_in_hotel(
room_number int primary key,
hotel_code nvarchar(9) foreign key references hotels(hotel_code),
number_of_beds int,
room_price int
)
go 
create table flights(
flight_code int primary key identity,
flight_company nvarchar(10),
flight_date date,
flight_country_of_origin nvarchar(10),
flight_destination_country nvarchar(10)
)
go
create table holiday_package(
package_code int primary key identity,
user_tz nvarchar(9) foreign key references users(user_tz),
hotel_code nvarchar(9) foreign key references hotels(hotel_code),
flight_enter_code int foreign key references flights(flight_code),
flight_back_code int foreign key references flights(flight_code)
)


