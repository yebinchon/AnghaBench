
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_tick_rate_t ;


 int PROF_TIMER ;
 int tmrHw_getCountRate (int ) ;

timer_tick_rate_t timer_get_tick_rate(void)
{
 return tmrHw_getCountRate(PROF_TIMER);
}
