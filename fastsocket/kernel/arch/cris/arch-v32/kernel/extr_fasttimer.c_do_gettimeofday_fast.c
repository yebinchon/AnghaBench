
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fasttime_t {int tv_usec; int tv_jiff; } ;


 int GET_JIFFIES_USEC () ;
 int jiffies ;

inline void do_gettimeofday_fast(struct fasttime_t *tv)
{
 tv->tv_jiff = jiffies;
 tv->tv_usec = GET_JIFFIES_USEC();
}
