
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int SPIClock; int UARTClock; } ;
typedef int (* RUNFUNC ) () ;


 int CSP_CACHE_FLUSH_ALL ;
 int INTCHW_INTC0 ;
 int INTCHW_INTC1 ;
 int INTCHW_SINTC ;
 scalar_t__ MM_ADDR_IO_ARAM ;
 scalar_t__ MM_IO_BASE_ARAM ;
 int REG_LOCAL_IRQ_RESTORE ;
 int REG_LOCAL_IRQ_SAVE ;
 int chipcHw_REG_PLL_CLOCK_BYPASS_SELECT ;
 int chipcHw_REG_SOFT_RESET_CHIP_SOFT ;
 int chipcHw_reset_run_from_aram ;
 int chipcHw_softReset (int) ;
 int intcHw_irq_disable (int ,int) ;
 TYPE_1__* pChipcHw ;

void chipcHw_reset(uint32_t mask)
{
 int i = 0;
 RUNFUNC runFunc = (RUNFUNC) (unsigned long)MM_ADDR_IO_ARAM;


 intcHw_irq_disable(INTCHW_INTC0, 0xffffffff);
 intcHw_irq_disable(INTCHW_INTC1, 0xffffffff);
 intcHw_irq_disable(INTCHW_SINTC, 0xffffffff);

 {
  REG_LOCAL_IRQ_SAVE;
  if (mask & chipcHw_REG_SOFT_RESET_CHIP_SOFT) {
   chipcHw_softReset(chipcHw_REG_SOFT_RESET_CHIP_SOFT);
  }

  pChipcHw->UARTClock |= chipcHw_REG_PLL_CLOCK_BYPASS_SELECT;
  pChipcHw->SPIClock |= chipcHw_REG_PLL_CLOCK_BYPASS_SELECT;


  do {
   ((uint32_t *) MM_IO_BASE_ARAM)[i] =
       ((uint32_t *) &chipcHw_reset_run_from_aram)[i];
   i++;
  } while (((uint32_t *) MM_IO_BASE_ARAM)[i - 1] != 0xe1a0f00f);

  CSP_CACHE_FLUSH_ALL;


  runFunc();


  REG_LOCAL_IRQ_RESTORE;
 }
}
