
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int enable; } ;


 int BFIN_TIMER_NUM_GROUP ;
 TYPE_1__** group_regs ;

uint16_t get_enabled_gptimers(void)
{
 int i;
 uint16_t result = 0;
 for (i = 0; i < BFIN_TIMER_NUM_GROUP; ++i)
  result |= (group_regs[i]->enable << (i << 3));
 return result;
}
