
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;


 int get_cmos_time () ;

void sh03_rtc_gettimeofday(struct timespec *tv)
{

 tv->tv_sec = get_cmos_time();
 tv->tv_nsec = 0;
}
