
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tmrHw_ID_t ;
typedef int tmrHw_CAPABILITY_e ;




 int tmrHw_HIGH_RESOLUTION_CLOCK ;
 int tmrHw_LOW_RESOLUTION_CLOCK ;

uint32_t tmrHw_getTimerCapability(tmrHw_ID_t timerId,
      tmrHw_CAPABILITY_e capability
) {
 switch (capability) {
 case 129:
  return (timerId <=
   1) ? tmrHw_LOW_RESOLUTION_CLOCK :
      tmrHw_HIGH_RESOLUTION_CLOCK;
 case 128:
  return 32;
 default:
  return 0;
 }
 return 0;
}
