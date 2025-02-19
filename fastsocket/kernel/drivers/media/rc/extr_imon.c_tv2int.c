
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;



__attribute__((used)) static inline int tv2int(const struct timeval *a, const struct timeval *b)
{
 int usecs = 0;
 int sec = 0;

 if (b->tv_usec > a->tv_usec) {
  usecs = 1000000;
  sec--;
 }

 usecs += a->tv_usec - b->tv_usec;

 sec += a->tv_sec - b->tv_sec;
 sec *= 1000;
 usecs /= 1000;
 sec += usecs;

 if (sec < 0)
  sec = 1000;

 return sec;
}
