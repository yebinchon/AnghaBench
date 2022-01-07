
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; scalar_t__ tm_year; } ;


 int mf_get_boot_rtc (struct rtc_time*) ;
 unsigned long mktime (scalar_t__,int ,int ,int ,int ,int ) ;

unsigned long iSeries_get_boot_time(void)
{
 struct rtc_time tm;

 mf_get_boot_rtc(&tm);
 return mktime(tm.tm_year + 1900, tm.tm_mon, tm.tm_mday,
        tm.tm_hour, tm.tm_min, tm.tm_sec);
}
