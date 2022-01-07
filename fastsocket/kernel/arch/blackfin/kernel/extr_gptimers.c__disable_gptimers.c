
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int disable; } ;


 int BFIN_TIMER_NUM_GROUP ;
 int BLACKFIN_GPTIMER_IDMASK ;
 TYPE_1__** group_regs ;
 int tassert (int) ;

__attribute__((used)) static void _disable_gptimers(uint16_t mask)
{
 int i;
 uint16_t m = mask;
 tassert((mask & ~BLACKFIN_GPTIMER_IDMASK) == 0);
 for (i = 0; i < BFIN_TIMER_NUM_GROUP; ++i) {
  group_regs[i]->disable = m & 0xFF;
  m >>= 8;
 }
}
