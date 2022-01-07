
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_fiq_disable () ;
 int local_fiq_enable () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int omap2_can_sleep () ;
 int omap2_enter_full_retention () ;
 int omap2_enter_mpu_retention () ;
 scalar_t__ omap_irq_pending () ;

__attribute__((used)) static void omap2_pm_idle(void)
{
 local_irq_disable();
 local_fiq_disable();

 if (!omap2_can_sleep()) {
  if (omap_irq_pending())
   goto out;
  omap2_enter_mpu_retention();
  goto out;
 }

 if (omap_irq_pending())
  goto out;

 omap2_enter_full_retention();

out:
 local_fiq_enable();
 local_irq_enable();
}
