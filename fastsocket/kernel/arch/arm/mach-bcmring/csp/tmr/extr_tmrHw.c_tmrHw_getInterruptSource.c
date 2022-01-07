
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmrHw_ID_t ;
struct TYPE_2__ {scalar_t__ InterruptStatus; } ;


 TYPE_1__* pTmrHw ;
 int tmrHw_TIMER_NUM_COUNT ;

tmrHw_ID_t tmrHw_getInterruptSource(void
) {
 int i;

 for (i = 0; i < tmrHw_TIMER_NUM_COUNT; i++) {
  if (pTmrHw[i].InterruptStatus) {
   return i;
  }
 }

 return 0xFFFFFFFF;
}
