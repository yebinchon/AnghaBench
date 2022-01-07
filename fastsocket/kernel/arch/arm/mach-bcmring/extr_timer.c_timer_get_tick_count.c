
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_tick_count_t ;


 int PROF_TIMER ;
 int tmrHw_GetCurrentCount (int ) ;

timer_tick_count_t timer_get_tick_count(void)
{
 return tmrHw_GetCurrentCount(PROF_TIMER);
}
