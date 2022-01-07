
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aica_rtc_gettimeofday ;
 int aica_rtc_settimeofday ;
 int rtc_sh_get_time ;
 int rtc_sh_set_time ;

void aica_time_init(void)
{
 rtc_sh_get_time = aica_rtc_gettimeofday;
 rtc_sh_set_time = aica_rtc_settimeofday;
}
