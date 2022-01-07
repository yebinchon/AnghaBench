
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmrHw_INTERVAL_t ;
typedef size_t tmrHw_ID_t ;
struct TYPE_2__ {int Control; } ;


 int ResetTimer (size_t) ;
 int SetTimerPeriod (size_t,int ) ;
 TYPE_1__* pTmrHw ;
 int tmrHw_CONTROL_ONESHOT ;
 int tmrHw_CONTROL_PERIODIC ;

tmrHw_INTERVAL_t tmrHw_setOneshotTimerInterval(tmrHw_ID_t timerId,
            tmrHw_INTERVAL_t msec
) {
 ResetTimer(timerId);


 pTmrHw[timerId].Control |= tmrHw_CONTROL_PERIODIC;
 pTmrHw[timerId].Control |= tmrHw_CONTROL_ONESHOT;

 return SetTimerPeriod(timerId, msec);
}
