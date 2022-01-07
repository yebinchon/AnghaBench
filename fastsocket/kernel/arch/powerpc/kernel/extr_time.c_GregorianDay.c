
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_mon; int tm_wday; scalar_t__ tm_mday; } ;


 scalar_t__ leapyear (int) ;

void GregorianDay(struct rtc_time * tm)
{
 int leapsToDate;
 int lastYear;
 int day;
 int MonthOffset[] = { 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334 };

 lastYear = tm->tm_year - 1;




 leapsToDate = lastYear / 4 - lastYear / 100 + lastYear / 400;







 day = tm->tm_mon > 2 && leapyear(tm->tm_year);

 day += lastYear*365 + leapsToDate + MonthOffset[tm->tm_mon-1] +
     tm->tm_mday;

 tm->tm_wday = day % 7;
}
