
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long tmrHw_RATE_t ;
typedef int tmrHw_ID_t ;
typedef unsigned long tmrHw_COUNT_t ;


 unsigned long tmrHw_GetCurrentCount (int ) ;
 unsigned long tmrHw_divide (int ,int) ;
 int tmrHw_getCountRate (int ) ;

void tmrHw_udelay(tmrHw_ID_t timerId,
    unsigned long usecs
) {
 tmrHw_RATE_t usec_tick_rate;
 tmrHw_COUNT_t start_time;
 tmrHw_COUNT_t delta_time;

 start_time = tmrHw_GetCurrentCount(timerId);
 usec_tick_rate = tmrHw_divide(tmrHw_getCountRate(timerId), 1000000);
 delta_time = usecs * usec_tick_rate;


 while (delta_time > (tmrHw_GetCurrentCount(timerId) - start_time))
  ;
}
