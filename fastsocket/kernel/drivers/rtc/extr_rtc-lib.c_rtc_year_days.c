
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t is_leap_year (unsigned int) ;
 int** rtc_ydays ;

int rtc_year_days(unsigned int day, unsigned int month, unsigned int year)
{
 return rtc_ydays[is_leap_year(year)][month] + day-1;
}
