
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int VPMClock; int Spare1; } ;


 int MAX_PHASE_ADJUST_COUNT ;
 int chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK ;
 int chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT ;
 int chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE ;
 int chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE ;
 scalar_t__ chipcHw_REV_NUMBER_A0 ;
 scalar_t__ chipcHw_getChipRevisionNumber () ;
 int chipcHw_getVpmHwPhaseAlignStatus () ;
 int chipcHw_getVpmPhaseControl () ;
 int chipcHw_vpmHwPhaseAlignDisable () ;
 int chipcHw_vpmSwPhaseAlignEnable () ;
 TYPE_1__* pChipcHw ;
 int reg32_write (int*,int) ;
 int udelay (int) ;
 int vpmPhaseAlignA0 () ;

int chipcHw_vpmPhaseAlign(void)
{

 if (chipcHw_getChipRevisionNumber() == chipcHw_REV_NUMBER_A0) {
  return vpmPhaseAlignA0();
 } else {
  uint32_t phaseControl = chipcHw_getVpmPhaseControl();
  uint32_t phaseValue = 0;
  int adjustCount = 0;


  pChipcHw->Spare1 &= ~chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE;

  chipcHw_vpmHwPhaseAlignDisable();

  chipcHw_vpmSwPhaseAlignEnable();

  while (adjustCount < MAX_PHASE_ADJUST_COUNT) {
   phaseValue = chipcHw_getVpmHwPhaseAlignStatus();


   if (phaseValue > 0xF) {

    phaseControl++;
   } else if (phaseValue < 0xF) {

    phaseControl--;
   } else {

    pChipcHw->Spare1 |= chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE;

    return adjustCount;
   }

   reg32_write(&pChipcHw->VPMClock, (pChipcHw->VPMClock & (~chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK)) | (phaseControl << chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT));

   udelay(1);

   pChipcHw->VPMClock ^= chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE;

   adjustCount++;
  }
 }


 pChipcHw->Spare1 &= ~chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE;
 return -1;
}
