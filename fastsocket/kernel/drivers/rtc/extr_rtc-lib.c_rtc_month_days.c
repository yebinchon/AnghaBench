
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_leap_year (unsigned int) ;
 int* rtc_days_in_month ;

int rtc_month_days(unsigned int month, unsigned int year)
{
 return rtc_days_in_month[month] + (is_leap_year(year) && month == 1);
}
