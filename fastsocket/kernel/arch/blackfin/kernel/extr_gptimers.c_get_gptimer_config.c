
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int config; } ;


 int MAX_BLACKFIN_GPTIMERS ;
 int tassert (int) ;
 TYPE_1__** timer_regs ;

uint16_t get_gptimer_config(int timer_id)
{
 tassert(timer_id < MAX_BLACKFIN_GPTIMERS);
 return timer_regs[timer_id]->config;
}
