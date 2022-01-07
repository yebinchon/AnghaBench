
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int clockid_t ;


 int sgi_clock_period ;

__attribute__((used)) static int sgi_clock_getres(const clockid_t which_clock, struct timespec *tp)
{
 tp->tv_sec = 0;
 tp->tv_nsec = sgi_clock_period;
 return 0;
}
