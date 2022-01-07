
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {long long tv_nsec; scalar_t__ tv_sec; } ;


 long long UM_NSEC_PER_USEC ;
 long long UM_USEC_PER_SEC ;

__attribute__((used)) static inline long long timespec_to_us(const struct timespec *ts)
{
 return ((long long) ts->tv_sec * UM_USEC_PER_SEC) +
  ts->tv_nsec / UM_NSEC_PER_USEC;
}
