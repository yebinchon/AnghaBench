
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t tmrHw_ID_t ;
struct TYPE_2__ {int InterruptClear; } ;


 TYPE_1__* pTmrHw ;

void tmrHw_clearInterrupt(tmrHw_ID_t timerId
) {
 pTmrHw[timerId].InterruptClear = 0x1;
}
