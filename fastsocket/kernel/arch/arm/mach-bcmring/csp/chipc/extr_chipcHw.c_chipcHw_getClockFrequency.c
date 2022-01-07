
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int chipcHw_freq ;
typedef int chipcHw_CLOCK_e ;
struct TYPE_2__ {int PLLPreDivider; int PLLPreDivider2; int DDRClock; int ARMClock; int ESWClock; int VPMClock; int ESW125Clock; int UARTClock; int SDIO0Clock; int SDIO1Clock; int SPIClock; int ETMClock; int USBClock; int LCDClock; int APMClock; int ACLKClock; int OTPClock; int I2CClock; int I2S0Clock; int RTBUSClock; int APM100Clock; int TSCClock; int LEDClock; int I2S1Clock; int PLLDivider; } ;
 int volatile chipcHw_REG_DIV_CLOCK_BYPASS_SELECT ;
 int volatile chipcHw_REG_DIV_CLOCK_DIV_MASK ;
 int volatile chipcHw_REG_PLL_CLOCK_BYPASS_SELECT ;
 int volatile chipcHw_REG_PLL_CLOCK_MDIV_MASK ;
 scalar_t__ chipcHw_REG_PLL_DIVIDER_FRAC ;
 scalar_t__ chipcHw_REG_PLL_DIVIDER_NDIV_f_SS ;
 int chipcHw_REG_PLL_PREDIVIDER_NDIV_MASK ;
 int chipcHw_REG_PLL_PREDIVIDER_NDIV_MODE_INTEGER ;
 int chipcHw_REG_PLL_PREDIVIDER_NDIV_MODE_MASK ;
 int chipcHw_REG_PLL_PREDIVIDER_NDIV_SHIFT ;
 int chipcHw_REG_PLL_PREDIVIDER_P1 ;
 int chipcHw_REG_PLL_PREDIVIDER_P2 ;
 scalar_t__ chipcHw_REV_NUMBER_A0 ;
 int chipcHw_XTAL_FREQ_Hz ;
 int chipcHw_divide (int,int volatile) ;
 scalar_t__ chipcHw_getChipRevisionNumber () ;
 TYPE_1__* pChipcHw ;

chipcHw_freq chipcHw_getClockFrequency(chipcHw_CLOCK_e clock
    ) {
 volatile uint32_t *pPLLReg = (uint32_t *) 0x0;
 volatile uint32_t *pClockCtrl = (uint32_t *) 0x0;
 volatile uint32_t *pDependentClock = (uint32_t *) 0x0;
 uint32_t vcoFreqPll1Hz = 0;
 uint32_t vcoFreqPll2Hz = 0;
 uint32_t dependentClockType = 0;
 uint32_t vcoHz = 0;


 if ((pChipcHw->PLLPreDivider & chipcHw_REG_PLL_PREDIVIDER_NDIV_MODE_MASK) != chipcHw_REG_PLL_PREDIVIDER_NDIV_MODE_INTEGER) {
  uint64_t adjustFreq = 0;

  vcoFreqPll1Hz = chipcHw_XTAL_FREQ_Hz *
      chipcHw_divide(chipcHw_REG_PLL_PREDIVIDER_P1, chipcHw_REG_PLL_PREDIVIDER_P2) *
      ((pChipcHw->PLLPreDivider & chipcHw_REG_PLL_PREDIVIDER_NDIV_MASK) >>
       chipcHw_REG_PLL_PREDIVIDER_NDIV_SHIFT);


  adjustFreq = (uint64_t) chipcHw_XTAL_FREQ_Hz *
   (uint64_t) chipcHw_REG_PLL_DIVIDER_NDIV_f_SS *
   chipcHw_divide(chipcHw_REG_PLL_PREDIVIDER_P1, (chipcHw_REG_PLL_PREDIVIDER_P2 * (uint64_t) chipcHw_REG_PLL_DIVIDER_FRAC));
  vcoFreqPll1Hz += (uint32_t) adjustFreq;
 } else {
  vcoFreqPll1Hz = chipcHw_XTAL_FREQ_Hz *
      chipcHw_divide(chipcHw_REG_PLL_PREDIVIDER_P1, chipcHw_REG_PLL_PREDIVIDER_P2) *
      ((pChipcHw->PLLPreDivider & chipcHw_REG_PLL_PREDIVIDER_NDIV_MASK) >>
       chipcHw_REG_PLL_PREDIVIDER_NDIV_SHIFT);
 }
 vcoFreqPll2Hz =
     chipcHw_XTAL_FREQ_Hz *
   chipcHw_divide(chipcHw_REG_PLL_PREDIVIDER_P1, chipcHw_REG_PLL_PREDIVIDER_P2) *
     ((pChipcHw->PLLPreDivider2 & chipcHw_REG_PLL_PREDIVIDER_NDIV_MASK) >>
      chipcHw_REG_PLL_PREDIVIDER_NDIV_SHIFT);

 switch (clock) {
 case 145:
  pPLLReg = &pChipcHw->DDRClock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 147:
  pPLLReg = &pChipcHw->ARMClock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 144:
  pPLLReg = &pChipcHw->ESWClock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 128:
  pPLLReg = &pChipcHw->VPMClock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 143:
  pPLLReg = &pChipcHw->ESW125Clock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 130:
  pPLLReg = &pChipcHw->UARTClock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 134:
  pPLLReg = &pChipcHw->SDIO0Clock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 133:
  pPLLReg = &pChipcHw->SDIO1Clock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 132:
  pPLLReg = &pChipcHw->SPIClock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 142:
  pPLLReg = &pChipcHw->ETMClock;
  vcoHz = vcoFreqPll1Hz;
  break;
 case 129:
  pPLLReg = &pChipcHw->USBClock;
  vcoHz = vcoFreqPll2Hz;
  break;
 case 138:
  pPLLReg = &pChipcHw->LCDClock;
  vcoHz = vcoFreqPll2Hz;
  break;
 case 149:
  pPLLReg = &pChipcHw->APMClock;
  vcoHz = vcoFreqPll2Hz;
  break;
 case 146:
  pClockCtrl = &pChipcHw->ACLKClock;
  pDependentClock = &pChipcHw->ARMClock;
  vcoHz = vcoFreqPll1Hz;
  dependentClockType = 150;
  break;
 case 136:
  pClockCtrl = &pChipcHw->OTPClock;
  break;
 case 141:
  pClockCtrl = &pChipcHw->I2CClock;
  break;
 case 140:
  pClockCtrl = &pChipcHw->I2S0Clock;
  break;
 case 135:
  pClockCtrl = &pChipcHw->RTBUSClock;
  pDependentClock = &pChipcHw->ACLKClock;
  dependentClockType = 151;
  break;
 case 148:
  pClockCtrl = &pChipcHw->APM100Clock;
  pDependentClock = &pChipcHw->APMClock;
  vcoHz = vcoFreqPll2Hz;
  dependentClockType = 150;
  break;
 case 131:
  pClockCtrl = &pChipcHw->TSCClock;
  break;
 case 137:
  pClockCtrl = &pChipcHw->LEDClock;
  break;
 case 139:
  pClockCtrl = &pChipcHw->I2S1Clock;
  break;
 }

 if (pPLLReg) {

  if (*pPLLReg & chipcHw_REG_PLL_CLOCK_BYPASS_SELECT) {

   return chipcHw_XTAL_FREQ_Hz;
  } else if (clock == 145) {

   return chipcHw_divide (vcoHz, (((pChipcHw->PLLDivider & 0xFF000000) >> 24) ? ((pChipcHw->PLLDivider & 0xFF000000) >> 24) : 256));
  } else {

   if ((pPLLReg == &pChipcHw->LCDClock) && (chipcHw_getChipRevisionNumber() != chipcHw_REV_NUMBER_A0)) {
    vcoHz >>= 1;
   }

   return chipcHw_divide(vcoHz, ((*pPLLReg & chipcHw_REG_PLL_CLOCK_MDIV_MASK) ? (*pPLLReg & chipcHw_REG_PLL_CLOCK_MDIV_MASK) : 256));
  }
 } else if (pClockCtrl) {

  uint32_t div;
  uint32_t freq = 0;

  if (*pClockCtrl & chipcHw_REG_DIV_CLOCK_BYPASS_SELECT) {

   return chipcHw_XTAL_FREQ_Hz;
  } else if (pDependentClock) {

   switch (dependentClockType) {
   case 150:
    if (*pDependentClock & chipcHw_REG_PLL_CLOCK_BYPASS_SELECT) {

     freq = chipcHw_XTAL_FREQ_Hz;
    } else {

     div = *pDependentClock & chipcHw_REG_PLL_CLOCK_MDIV_MASK;
     freq = div ? chipcHw_divide(vcoHz, div) : 0;
    }
    break;
   case 151:
    if (pDependentClock == (uint32_t *) &pChipcHw->ACLKClock) {
     freq = chipcHw_getClockFrequency (146);
    } else {
     if (*pDependentClock & chipcHw_REG_DIV_CLOCK_BYPASS_SELECT) {

      freq = chipcHw_XTAL_FREQ_Hz;
     } else {

      div = *pDependentClock & chipcHw_REG_DIV_CLOCK_DIV_MASK;
      freq = chipcHw_divide (chipcHw_XTAL_FREQ_Hz, (div ? div : 256));
     }
    }
    break;
   }
  } else {

   freq = chipcHw_XTAL_FREQ_Hz;
  }

  div = *pClockCtrl & chipcHw_REG_DIV_CLOCK_DIV_MASK;
  return chipcHw_divide(freq, (div ? div : 256));
 }
 return 0;
}
