
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 size_t BFIN_TIMER_OCTET (int) ;
 int MAX_BLACKFIN_GPTIMERS ;
 TYPE_1__** group_regs ;
 int tassert (int) ;
 int * timil_mask ;

void clear_gptimer_intr(int timer_id)
{
 tassert(timer_id < MAX_BLACKFIN_GPTIMERS);
 group_regs[BFIN_TIMER_OCTET(timer_id)]->status = timil_mask[timer_id];
}
