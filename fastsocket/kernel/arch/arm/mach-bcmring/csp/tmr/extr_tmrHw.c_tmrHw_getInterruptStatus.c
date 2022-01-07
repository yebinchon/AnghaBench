
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmrHw_INTERRUPT_STATUS_e ;
typedef size_t tmrHw_ID_t ;
struct TYPE_2__ {scalar_t__ InterruptStatus; } ;


 TYPE_1__* pTmrHw ;
 int tmrHw_INTERRUPT_STATUS_SET ;
 int tmrHw_INTERRUPT_STATUS_UNSET ;

tmrHw_INTERRUPT_STATUS_e tmrHw_getInterruptStatus(tmrHw_ID_t timerId
) {
 if (pTmrHw[timerId].InterruptStatus) {
  return tmrHw_INTERRUPT_STATUS_SET;
 } else {
  return tmrHw_INTERRUPT_STATUS_UNSET;
 }
}
