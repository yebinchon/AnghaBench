
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int status; } ;


 size_t BFIN_TIMER_OCTET (int) ;
 int MAX_BLACKFIN_GPTIMERS ;
 int SSYNC () ;
 int _disable_gptimers (int) ;
 TYPE_1__** group_regs ;
 int * trun_mask ;

void disable_gptimers(uint16_t mask)
{
 int i;
 _disable_gptimers(mask);
 for (i = 0; i < MAX_BLACKFIN_GPTIMERS; ++i)
  if (mask & (1 << i))
   group_regs[BFIN_TIMER_OCTET(i)]->status |= trun_mask[i];
 SSYNC();
}
