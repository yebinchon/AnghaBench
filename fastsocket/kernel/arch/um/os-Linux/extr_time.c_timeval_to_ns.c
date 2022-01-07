
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long long tv_usec; scalar_t__ tv_sec; } ;


 long long UM_NSEC_PER_SEC ;
 long long UM_NSEC_PER_USEC ;

__attribute__((used)) static inline long long timeval_to_ns(const struct timeval *tv)
{
 return ((long long) tv->tv_sec * UM_NSEC_PER_SEC) +
  tv->tv_usec * UM_NSEC_PER_USEC;
}
