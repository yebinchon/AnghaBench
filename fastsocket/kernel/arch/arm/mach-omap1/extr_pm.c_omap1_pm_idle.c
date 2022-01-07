
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int ARM_IDLECT1 ;
 int ARM_IDLECT2 ;
 int OMAP1510_BIG_SLEEP_REQUEST ;
 int OMAP1610_IDLECT1_SLEEP_VAL ;
 scalar_t__ cpu_is_omap15xx () ;
 scalar_t__ enable_dyn_sleep ;
 int local_fiq_disable () ;
 int local_fiq_enable () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 scalar_t__ need_resched () ;
 int omap_dm_timer_modify_idlect_mask (int) ;
 scalar_t__ omap_dma_running () ;
 int omap_readl (int ) ;
 int omap_sram_suspend (int,int) ;
 int omap_writel (int,int ) ;

void omap1_pm_idle(void)
{
 extern __u32 arm_idlect1_mask;
 __u32 use_idlect1 = arm_idlect1_mask;
 int do_sleep = 0;

 local_irq_disable();
 local_fiq_disable();
 if (need_resched()) {
  local_fiq_enable();
  local_irq_enable();
  return;
 }






 while (enable_dyn_sleep) {







  do_sleep = 1;
  break;
 }







 if (omap_dma_running())
  use_idlect1 &= ~(1 << 6);




 if ((use_idlect1 != ~0) || !do_sleep) {

  __u32 saved_idlect1 = omap_readl(ARM_IDLECT1);
  if (cpu_is_omap15xx())
   use_idlect1 &= OMAP1510_BIG_SLEEP_REQUEST;
  else
   use_idlect1 &= OMAP1610_IDLECT1_SLEEP_VAL;
  omap_writel(use_idlect1, ARM_IDLECT1);
  __asm__ volatile ("mcr	p15, 0, r0, c7, c0, 4");
  omap_writel(saved_idlect1, ARM_IDLECT1);

  local_fiq_enable();
  local_irq_enable();
  return;
 }
 omap_sram_suspend(omap_readl(ARM_IDLECT1),
     omap_readl(ARM_IDLECT2));

 local_fiq_enable();
 local_irq_enable();
}
