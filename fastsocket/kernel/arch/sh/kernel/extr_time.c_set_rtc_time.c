
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;


 int rtc_sh_set_time (unsigned long) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

int set_rtc_time(struct rtc_time *tm)
{
 unsigned long secs;

 rtc_tm_to_time(tm, &secs);
 return rtc_sh_set_time(secs);
}
