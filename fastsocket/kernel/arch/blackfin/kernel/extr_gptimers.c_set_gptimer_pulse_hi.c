
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;


 int MAX_BLACKFIN_GPTIMERS ;
 int SSYNC () ;
 int TIMER_PULSE_HI ;
 int tassert (int) ;
 TYPE_1__** timer_regs ;

void set_gptimer_pulse_hi(int timer_id)
{
 tassert(timer_id < MAX_BLACKFIN_GPTIMERS);
 timer_regs[timer_id]->config |= TIMER_PULSE_HI;
 SSYNC();
}
