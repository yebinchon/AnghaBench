
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {unsigned long tm_sec; unsigned long tm_min; } ;


 int mac_hwclk (int,struct rtc_time*) ;

int mac_set_clock_mmss (unsigned long nowtime)
{
 struct rtc_time now;

 mac_hwclk(0, &now);
 now.tm_sec = nowtime % 60;
 now.tm_min = (nowtime / 60) % 60;
 mac_hwclk(1, &now);

 return 0;
}
