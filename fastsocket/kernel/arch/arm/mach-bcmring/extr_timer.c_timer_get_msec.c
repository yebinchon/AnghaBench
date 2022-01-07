
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_msec_t ;


 int timer_get_tick_count () ;
 int timer_ticks_to_msec (int ) ;

timer_msec_t timer_get_msec(void)
{
 return timer_ticks_to_msec(timer_get_tick_count());
}
