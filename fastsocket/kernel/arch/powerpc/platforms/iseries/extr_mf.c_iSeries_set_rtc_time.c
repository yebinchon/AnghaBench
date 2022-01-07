
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;


 int mf_set_rtc (struct rtc_time*) ;

int iSeries_set_rtc_time(struct rtc_time *tm)
{
 mf_set_rtc(tm);
 return 0;
}
