
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fasttime_t {scalar_t__ tv_usec; int tv_jiff; } ;


 scalar_t__ time_after (int ,int ) ;
 scalar_t__ time_before (int ,int ) ;

inline int fasttime_cmp(struct fasttime_t *t0, struct fasttime_t *t1)
{

 if (time_before(t0->tv_jiff, t1->tv_jiff))
  return -1;
 else if (time_after(t0->tv_jiff, t1->tv_jiff))
  return 1;


 if (t0->tv_usec < t1->tv_usec)
  return -1;
 else if (t0->tv_usec > t1->tv_usec)
  return 1;
 return 0;
}
