
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compat_timeval {unsigned long tv_usec; unsigned long tv_sec; } ;
typedef int cputime_t ;


 unsigned long HZ ;
 unsigned long cputime_to_jiffies (int const) ;

__attribute__((used)) static __inline__ void
cputime_to_compat_timeval(const cputime_t cputime, struct compat_timeval *value)
{
 unsigned long jiffies = cputime_to_jiffies(cputime);
 value->tv_usec = (jiffies % HZ) * (1000000L / HZ);
 value->tv_sec = jiffies / HZ;
}
