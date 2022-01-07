
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int status; } ;


 int BFIN_TIMER_NUM_GROUP ;
 TYPE_1__** group_regs ;
 int tassert (int) ;

uint32_t get_gptimer_status(int group)
{
 tassert(group < BFIN_TIMER_NUM_GROUP);
 return group_regs[group]->status;
}
