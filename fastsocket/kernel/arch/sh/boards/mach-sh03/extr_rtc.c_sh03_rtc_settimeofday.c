
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long time_t ;


 int set_rtc_mmss (unsigned long) ;

int sh03_rtc_settimeofday(const time_t secs)
{
 unsigned long nowtime = secs;

 return set_rtc_mmss(nowtime);
}
