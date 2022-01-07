
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int enable; } ;


 int BFIN_TIMER_NUM_GROUP ;
 int BLACKFIN_GPTIMER_IDMASK ;
 int SSYNC () ;
 TYPE_1__** group_regs ;
 int tassert (int) ;

void enable_gptimers(uint16_t mask)
{
 int i;
 tassert((mask & ~BLACKFIN_GPTIMER_IDMASK) == 0);
 for (i = 0; i < BFIN_TIMER_NUM_GROUP; ++i) {
  group_regs[i]->enable = mask & 0xFF;
  mask >>= 8;
 }
 SSYNC();
}
