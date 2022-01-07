
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
 int* tovf_mask ;

int get_gptimer_over(int timer_id)
{
 tassert(timer_id < MAX_BLACKFIN_GPTIMERS);
 return !!(group_regs[BFIN_TIMER_OCTET(timer_id)]->status & tovf_mask[timer_id]);
}
