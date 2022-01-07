
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_fiq_disable () ;
 int local_fiq_enable () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int omap3_can_sleep () ;
 scalar_t__ omap_irq_pending () ;
 int omap_sram_idle () ;

__attribute__((used)) static void omap3_pm_idle(void)
{
 local_irq_disable();
 local_fiq_disable();

 if (!omap3_can_sleep())
  goto out;

 if (omap_irq_pending())
  goto out;

 omap_sram_idle();

out:
 local_fiq_enable();
 local_irq_enable();
}
