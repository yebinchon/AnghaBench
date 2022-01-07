
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int tmrHw_RATE_t ;
typedef size_t tmrHw_ID_t ;
struct TYPE_2__ {int Control; } ;


 TYPE_1__* pTmrHw ;
 int tmrHw_ASSERT (int ) ;



 int tmrHw_CONTROL_PRESCALE_MASK ;
 int tmrHw_HIGH_RESOLUTION_CLOCK ;
 int tmrHw_LOW_RESOLUTION_CLOCK ;
 int tmrHw_divide (int ,int) ;

tmrHw_RATE_t tmrHw_getCountRate(tmrHw_ID_t timerId
) {
 uint32_t divider = 0;

 switch (pTmrHw[timerId].Control & tmrHw_CONTROL_PRESCALE_MASK) {
 case 130:
  divider = 1;
  break;
 case 129:
  divider = 16;
  break;
 case 128:
  divider = 256;
  break;
 default:
  tmrHw_ASSERT(0);
 }

 if (timerId == 0 || timerId == 1) {
  return tmrHw_divide(tmrHw_LOW_RESOLUTION_CLOCK, divider);
 } else {
  return tmrHw_divide(tmrHw_HIGH_RESOLUTION_CLOCK, divider);
 }
 return 0;
}
