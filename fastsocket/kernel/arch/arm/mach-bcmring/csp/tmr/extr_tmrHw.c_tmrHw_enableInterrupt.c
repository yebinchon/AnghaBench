
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t tmrHw_ID_t ;
struct TYPE_2__ {int Control; } ;


 TYPE_1__* pTmrHw ;
 int tmrHw_CONTROL_INTERRUPT_ENABLE ;

void tmrHw_enableInterrupt(tmrHw_ID_t timerId
) {
 pTmrHw[timerId].Control |= tmrHw_CONTROL_INTERRUPT_ENABLE;
}
