
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGVTALRM ;
 int UM_HZ ;
 int UM_NSEC_PER_SEC ;
 int alarm_handler (int ,int *) ;
 unsigned long long last_tick ;
 unsigned long long os_nsecs () ;
 int skew ;

__attribute__((used)) static void deliver_alarm(void)
{
 unsigned long long this_tick = os_nsecs();
 int one_tick = UM_NSEC_PER_SEC / UM_HZ;


 if ((last_tick != 0) && (this_tick < last_tick))
  this_tick = last_tick;

 if (last_tick == 0)
  last_tick = this_tick - one_tick;

 skew += this_tick - last_tick;

 while (skew >= one_tick) {
  alarm_handler(SIGVTALRM, ((void*)0));
  skew -= one_tick;
 }

 last_tick = this_tick;
}
