
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_mon; } ;


 int mf_get_rtc (struct rtc_time*) ;

void iSeries_get_rtc_time(struct rtc_time *rtc_tm)
{
 mf_get_rtc(rtc_tm);
 rtc_tm->tm_mon--;
}
