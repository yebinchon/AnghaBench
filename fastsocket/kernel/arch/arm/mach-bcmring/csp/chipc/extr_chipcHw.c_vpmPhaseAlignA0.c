
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int VPMClock; } ;


 int MAX_PHASE_ADJUST_COUNT ;
 int MAX_PHASE_ALIGN_ATTEMPTS ;
 int REG_LOCAL_IRQ_RESTORE ;
 int REG_LOCAL_IRQ_SAVE ;
 int chipcHw_REG_PLL_CLOCK_PHASE_COMP ;
 int chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK ;
 int chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT ;
 int chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE ;
 TYPE_1__* pChipcHw ;
 int reg32_write (int*,int) ;
 int udelay (int) ;

__attribute__((used)) static int vpmPhaseAlignA0(void)
{
 uint32_t phaseControl;
 uint32_t phaseValue;
 uint32_t prevPhaseComp;
 int iter = 0;
 int adjustCount = 0;
 int count = 0;

 for (iter = 0; (iter < MAX_PHASE_ALIGN_ATTEMPTS) && (adjustCount < MAX_PHASE_ADJUST_COUNT); iter++) {
  phaseControl = (pChipcHw->VPMClock & chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK) >> chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT;
  phaseValue = 0;
  prevPhaseComp = 0;




  phaseValue = pChipcHw->VPMClock;
  do {

   prevPhaseComp = phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP;

   reg32_write(&pChipcHw->VPMClock, (pChipcHw->VPMClock & (~chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK)) | (phaseControl << chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT));

   udelay(1);

   pChipcHw->VPMClock ^= chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE;

   phaseValue = pChipcHw->VPMClock;

   if ((phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP) == 0x0) {
    phaseControl = (0x3F & (phaseControl - 1));
   } else {

    phaseControl = (0x3F & (phaseControl + 1));
   }

   adjustCount++;
  } while (((prevPhaseComp == (phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP)) ||
     ((phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP) != 0x0)) &&
    (adjustCount < MAX_PHASE_ADJUST_COUNT)
      );

  if (adjustCount >= MAX_PHASE_ADJUST_COUNT) {

   return -1;
  }



  for (count = 0; (count < 5) && ((phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP) == 0); count++) {
   phaseControl = (0x3F & (phaseControl + 1));
   reg32_write(&pChipcHw->VPMClock, (pChipcHw->VPMClock & (~chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK)) | (phaseControl << chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT));

   udelay(1);

   pChipcHw->VPMClock ^= chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE;
   phaseValue = pChipcHw->VPMClock;

   adjustCount++;
  }

  if (adjustCount >= MAX_PHASE_ADJUST_COUNT) {

   return -1;
  }

  if (count != 5) {

   continue;
  }



  for (count = 0; (count < 3) && ((phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP) == 0); count++) {
   phaseControl = (0x3F & (phaseControl - 1));
   reg32_write(&pChipcHw->VPMClock, (pChipcHw->VPMClock & (~chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK)) | (phaseControl << chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT));

   udelay(1);

   pChipcHw->VPMClock ^= chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE;
   phaseValue = pChipcHw->VPMClock;

   adjustCount++;
  }

  if (adjustCount >= MAX_PHASE_ADJUST_COUNT) {

   return -1;
  }

  if (count != 3) {

   continue;
  }



  for (count = 0; (count < 5); count++) {
   phaseControl = (0x3F & (phaseControl - 1));
   reg32_write(&pChipcHw->VPMClock, (pChipcHw->VPMClock & (~chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK)) | (phaseControl << chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT));

   udelay(1);

   pChipcHw->VPMClock ^= chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE;
   phaseValue = pChipcHw->VPMClock;

   adjustCount++;
  }

  if (adjustCount >= MAX_PHASE_ADJUST_COUNT) {

   return -1;
  }

  if ((phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP) == 0) {

   continue;
  }



  do {

   prevPhaseComp = phaseValue;

   reg32_write(&pChipcHw->VPMClock, (pChipcHw->VPMClock & (~chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK)) | (phaseControl << chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT));

   udelay(1);

   pChipcHw->VPMClock ^=
       chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE;

   phaseValue = pChipcHw->VPMClock;

   if ((phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP) == 0x0) {
    phaseControl = (0x3F & (phaseControl - 1));
   } else {

    phaseControl = (0x3F & (phaseControl + 1));
   }


   adjustCount++;
  } while (((prevPhaseComp == (phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP)) || ((phaseValue & chipcHw_REG_PLL_CLOCK_PHASE_COMP) != 0x0)) && (adjustCount < MAX_PHASE_ADJUST_COUNT));

  if (adjustCount >= MAX_PHASE_ADJUST_COUNT) {

   return -1;
  } else {

   break;
  }
 }


 phaseControl = (((pChipcHw->VPMClock >> chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT) - 1) & 0x3F);
 {
  REG_LOCAL_IRQ_SAVE;

  pChipcHw->VPMClock = (pChipcHw->VPMClock & ~chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK) | (phaseControl << chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT);

  pChipcHw->VPMClock ^= chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE;

  REG_LOCAL_IRQ_RESTORE;
 }

 return (int)adjustCount;
}
