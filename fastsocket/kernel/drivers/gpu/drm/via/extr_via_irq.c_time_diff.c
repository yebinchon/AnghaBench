
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; } ;



__attribute__((used)) static unsigned time_diff(struct timeval *now, struct timeval *then)
{
 return (now->tv_usec >= then->tv_usec) ?
  now->tv_usec - then->tv_usec :
  1000000 - (then->tv_usec - now->tv_usec);
}
