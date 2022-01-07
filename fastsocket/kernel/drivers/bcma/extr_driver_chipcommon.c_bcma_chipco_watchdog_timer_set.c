
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_cc {int capabilities; int core; } ;
typedef enum bcma_clkmode { ____Placeholder_bcma_clkmode } bcma_clkmode ;


 int BCMA_CC_CAP_PMU ;
 int BCMA_CC_PMU_WATCHDOG ;
 int BCMA_CC_WATCHDOG ;
 int BCMA_CLKMODE_DYNAMIC ;
 int BCMA_CLKMODE_FAST ;
 int bcma_cc_write32 (struct bcma_drv_cc*,int ,int) ;
 int bcma_chipco_watchdog_get_max_timer (struct bcma_drv_cc*) ;
 int bcma_core_set_clockmode (int ,int) ;

u32 bcma_chipco_watchdog_timer_set(struct bcma_drv_cc *cc, u32 ticks)
{
 u32 maxt;
 enum bcma_clkmode clkmode;

 maxt = bcma_chipco_watchdog_get_max_timer(cc);
 if (cc->capabilities & BCMA_CC_CAP_PMU) {
  if (ticks == 1)
   ticks = 2;
  else if (ticks > maxt)
   ticks = maxt;
  bcma_cc_write32(cc, BCMA_CC_PMU_WATCHDOG, ticks);
 } else {
  clkmode = ticks ? BCMA_CLKMODE_FAST : BCMA_CLKMODE_DYNAMIC;
  bcma_core_set_clockmode(cc->core, clkmode);
  if (ticks > maxt)
   ticks = maxt;

  bcma_cc_write32(cc, BCMA_CC_WATCHDOG, ticks);
 }
 return ticks;
}
