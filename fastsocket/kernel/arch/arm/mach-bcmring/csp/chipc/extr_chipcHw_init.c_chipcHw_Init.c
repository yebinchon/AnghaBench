
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int armBusRatio; int busClockFreqHz; int vpmBusRatio; int ddrBusRatio; int pll2VcoFreqHz; int ssSupport; int pllVcoFreqHz; } ;
typedef TYPE_1__ chipcHw_INIT_PARAM_t ;
struct TYPE_5__ {int ACLKClock; } ;


 int chipcHw_CLOCK_ARM ;
 int chipcHw_CLOCK_BUS ;
 int chipcHw_CLOCK_DDR ;
 int chipcHw_CLOCK_RTBUS ;
 int chipcHw_CLOCK_VPM ;
 int chipcHw_REG_ACLKClock_CLK_DIV_MASK ;
 int chipcHw_REG_STICKY_CHIP_SOFT_RESET ;
 int chipcHw_REG_STICKY_CHIP_WARM_RESET ;
 int chipcHw_clearStickyBits (int) ;
 int chipcHw_getStickyBits () ;
 int chipcHw_pll1Enable (int ,int ) ;
 int chipcHw_pll2Enable (int ) ;
 int chipcHw_setClockFrequency (int ,int) ;
 int delay_init () ;
 TYPE_2__* pChipcHw ;

void chipcHw_Init(chipcHw_INIT_PARAM_t *initParam
    ) {

 delay_init();



 if (!(chipcHw_getStickyBits() & chipcHw_REG_STICKY_CHIP_WARM_RESET)) {
  chipcHw_pll1Enable(initParam->pllVcoFreqHz,
       initParam->ssSupport);
  chipcHw_pll2Enable(initParam->pll2VcoFreqHz);
 } else {

  chipcHw_clearStickyBits(chipcHw_REG_STICKY_CHIP_WARM_RESET);
 }

 chipcHw_clearStickyBits(chipcHw_REG_STICKY_CHIP_SOFT_RESET);


 pChipcHw->ACLKClock =
     (pChipcHw->
      ACLKClock & ~chipcHw_REG_ACLKClock_CLK_DIV_MASK) | (initParam->
         armBusRatio &
         chipcHw_REG_ACLKClock_CLK_DIV_MASK);






 chipcHw_setClockFrequency(chipcHw_CLOCK_ARM,
      initParam->busClockFreqHz *
      initParam->armBusRatio);
 chipcHw_setClockFrequency(chipcHw_CLOCK_BUS, initParam->busClockFreqHz);
 chipcHw_setClockFrequency(chipcHw_CLOCK_VPM,
      initParam->busClockFreqHz *
      initParam->vpmBusRatio);
 chipcHw_setClockFrequency(chipcHw_CLOCK_DDR,
      initParam->busClockFreqHz *
      initParam->ddrBusRatio);
 chipcHw_setClockFrequency(chipcHw_CLOCK_RTBUS,
      initParam->busClockFreqHz / 2);
}
