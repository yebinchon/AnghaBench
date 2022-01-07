
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int adb_int_pending ;
 int disable_irq_nosync (int ) ;
 int gpio_irq ;
 scalar_t__ gpio_irq_enabled ;
 scalar_t__ gpio_reg ;
 int in_8 (scalar_t__) ;
 int * pmu_irq_stats ;
 int pmu_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int via_pmu_interrupt (int ,int *) ;

__attribute__((used)) static irqreturn_t
gpio1_interrupt(int irq, void *arg)
{
 unsigned long flags;

 if ((in_8(gpio_reg + 0x9) & 0x02) == 0) {
  spin_lock_irqsave(&pmu_lock, flags);
  if (gpio_irq_enabled > 0) {
   disable_irq_nosync(gpio_irq);
   gpio_irq_enabled = 0;
  }
  pmu_irq_stats[1]++;
  adb_int_pending = 1;
  spin_unlock_irqrestore(&pmu_lock, flags);
  via_pmu_interrupt(0, ((void*)0));
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
