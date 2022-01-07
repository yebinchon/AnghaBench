
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int tmrHw_RATE_t ;
typedef size_t tmrHw_ID_t ;
struct TYPE_2__ {int Control; } ;


 int ResetTimer (size_t) ;
 TYPE_1__* pTmrHw ;
 int tmrHw_CONTROL_ONESHOT ;
 int tmrHw_CONTROL_PERIODIC ;
 int tmrHw_CONTROL_PRESCALE_1 ;
 int tmrHw_CONTROL_PRESCALE_16 ;
 int tmrHw_CONTROL_PRESCALE_256 ;
 int tmrHw_HIGH_RESOLUTION_CLOCK ;
 int tmrHw_LOW_RESOLUTION_CLOCK ;
 int tmrHw_divide (int ,int) ;

tmrHw_RATE_t tmrHw_setFreeRunningTimer(tmrHw_ID_t timerId,
           uint32_t divider
) {
 uint32_t scale = 0;

 ResetTimer(timerId);

 pTmrHw[timerId].Control &= ~tmrHw_CONTROL_PERIODIC;
 pTmrHw[timerId].Control &= ~tmrHw_CONTROL_ONESHOT;

 if (divider >= 64) {
  pTmrHw[timerId].Control |= tmrHw_CONTROL_PRESCALE_256;
  scale = 256;
 } else if (divider >= 8) {
  pTmrHw[timerId].Control |= tmrHw_CONTROL_PRESCALE_16;
  scale = 16;
 } else {
  pTmrHw[timerId].Control |= tmrHw_CONTROL_PRESCALE_1;
  scale = 1;
 }

 if (timerId == 0 || timerId == 1) {
  return tmrHw_divide(tmrHw_LOW_RESOLUTION_CLOCK, scale);
 } else if (timerId == 2 || timerId == 3) {
  return tmrHw_divide(tmrHw_HIGH_RESOLUTION_CLOCK, scale);
 }

 return 0;
}
