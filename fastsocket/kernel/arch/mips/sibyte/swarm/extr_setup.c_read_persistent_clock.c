
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long tv_sec; scalar_t__ tv_nsec; } ;





 unsigned long m41t81_get_time () ;
 unsigned long mktime (int,int,int,int ,int ,int ) ;
 int swarm_rtc_type ;
 unsigned long xicor_get_time () ;

void read_persistent_clock(struct timespec *ts)
{
 unsigned long sec;

 switch (swarm_rtc_type) {
 case 128:
  sec = xicor_get_time();
  break;

 case 130:
  sec = m41t81_get_time();
  break;

 case 129:
 default:
  sec = mktime(2000, 1, 1, 0, 0, 0);
  break;
 }
 ts->tv_sec = sec;
 ts->tv_nsec = 0;
}
