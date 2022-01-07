
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtc_sh_get_time ;
 int rtc_sh_set_time ;
 int sh03_rtc_gettimeofday ;
 int sh03_rtc_settimeofday ;

void sh03_time_init(void)
{
 rtc_sh_get_time = sh03_rtc_gettimeofday;
 rtc_sh_set_time = sh03_rtc_settimeofday;
}
