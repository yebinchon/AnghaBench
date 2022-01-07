
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t tmrHw_ID_t ;
struct TYPE_2__ {int CurrentValue; int InterruptClear; scalar_t__ RawInterruptStatus; int Control; scalar_t__ BackgroundLoad; scalar_t__ LoadValue; } ;


 TYPE_1__* pTmrHw ;
 int tmrHw_CONTROL_32BIT ;

__attribute__((used)) static void ResetTimer(tmrHw_ID_t timerId
) {

 pTmrHw[timerId].LoadValue = 0;
 pTmrHw[timerId].CurrentValue = 0xFFFFFFFF;
 pTmrHw[timerId].Control = 0;
 pTmrHw[timerId].BackgroundLoad = 0;

 pTmrHw[timerId].Control |= tmrHw_CONTROL_32BIT;

 if (pTmrHw[timerId].RawInterruptStatus) {
  pTmrHw[timerId].InterruptClear = 0xFFFFFFFF;
 }
}
