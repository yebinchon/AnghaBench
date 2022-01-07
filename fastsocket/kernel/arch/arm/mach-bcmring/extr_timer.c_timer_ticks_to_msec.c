
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_tick_count_t ;
typedef int timer_msec_t ;


 int timer_get_tick_rate () ;

timer_msec_t timer_ticks_to_msec(timer_tick_count_t ticks)
{
 static int tickRateMsec;

 if (tickRateMsec == 0) {
  tickRateMsec = timer_get_tick_rate() / 1000;
 }

 return ticks / tickRateMsec;
}
