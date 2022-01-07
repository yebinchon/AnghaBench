
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct timeval {int tv_usec; int tv_sec; } ;



__attribute__((used)) static inline void timeval_usec_add(struct timeval *curtime, u32 add_usec)
{
 curtime->tv_usec += add_usec;
 if (curtime->tv_usec >= 1000000) {
  curtime->tv_usec -= 1000000;
  curtime->tv_sec++;
 }
}
