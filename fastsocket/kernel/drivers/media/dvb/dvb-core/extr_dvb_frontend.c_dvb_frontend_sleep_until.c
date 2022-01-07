
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timeval {int dummy; } ;
typedef int s32 ;


 int do_gettimeofday (struct timeval*) ;
 int msleep (int) ;
 int timeval_usec_add (struct timeval*,int ) ;
 int timeval_usec_diff (struct timeval,struct timeval) ;
 int udelay (int) ;

void dvb_frontend_sleep_until(struct timeval *waketime, u32 add_usec)
{
 struct timeval lasttime;
 s32 delta, newdelta;

 timeval_usec_add(waketime, add_usec);

 do_gettimeofday(&lasttime);
 delta = timeval_usec_diff(lasttime, *waketime);
 if (delta > 2500) {
  msleep((delta - 1500) / 1000);
  do_gettimeofday(&lasttime);
  newdelta = timeval_usec_diff(lasttime, *waketime);
  delta = (newdelta > delta) ? 0 : newdelta;
 }
 if (delta > 0)
  udelay(delta);
}
