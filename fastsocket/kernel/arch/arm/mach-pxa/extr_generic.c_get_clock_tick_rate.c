
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_is_pxa25x () ;
 scalar_t__ machine_is_mainstone () ;

unsigned long get_clock_tick_rate(void)
{
 unsigned long clock_tick_rate;

 if (cpu_is_pxa25x())
  clock_tick_rate = 3686400;
 else if (machine_is_mainstone())
  clock_tick_rate = 3249600;
 else
  clock_tick_rate = 3250000;

 return clock_tick_rate;
}
