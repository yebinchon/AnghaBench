
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int width; } ;


 int MAX_BLACKFIN_GPTIMERS ;
 int SSYNC () ;
 int tassert (int) ;
 TYPE_1__** timer_regs ;

void set_gptimer_pwidth(int timer_id, uint32_t value)
{
 tassert(timer_id < MAX_BLACKFIN_GPTIMERS);
 timer_regs[timer_id]->width = value;
 SSYNC();
}
