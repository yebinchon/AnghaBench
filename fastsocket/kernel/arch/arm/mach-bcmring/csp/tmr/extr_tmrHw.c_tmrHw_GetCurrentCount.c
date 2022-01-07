
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t tmrHw_ID_t ;
struct TYPE_2__ {int Control; scalar_t__ CurrentValue; scalar_t__ BackgroundLoad; } ;


 TYPE_1__* pTmrHw ;

 int tmrHw_CONTROL_MODE_MASK ;


 scalar_t__ tmrHw_MAX_COUNT ;

uint32_t tmrHw_GetCurrentCount(tmrHw_ID_t timerId
) {

 switch (pTmrHw[timerId].Control & tmrHw_CONTROL_MODE_MASK) {
 case 130:
  if (pTmrHw[timerId].CurrentValue) {
   return tmrHw_MAX_COUNT - pTmrHw[timerId].CurrentValue;
  }
  break;
 case 128:
 case 129:
  return pTmrHw[timerId].BackgroundLoad -
      pTmrHw[timerId].CurrentValue;
 }
 return 0;
}
