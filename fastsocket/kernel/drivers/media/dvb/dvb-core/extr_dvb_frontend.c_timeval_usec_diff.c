
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
typedef int s32 ;



s32 timeval_usec_diff(struct timeval lasttime, struct timeval curtime)
{
 return ((curtime.tv_usec < lasttime.tv_usec) ?
  1000000 - lasttime.tv_usec + curtime.tv_usec :
  curtime.tv_usec - lasttime.tv_usec);
}
