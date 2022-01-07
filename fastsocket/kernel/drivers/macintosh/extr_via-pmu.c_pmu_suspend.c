
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CB1_INT ;
 size_t IER ;
 int IER_CLR ;
 int adb_int_pending ;
 int disable_irq_nosync (scalar_t__) ;
 scalar_t__ gpio_irq ;
 scalar_t__ idle ;
 int out_8 (int *,int) ;
 int pmu_lock ;
 scalar_t__ pmu_state ;
 int pmu_suspended ;
 scalar_t__ req_awaiting_reply ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * via ;
 int via_pmu_interrupt (int ,int *) ;

void
pmu_suspend(void)
{
 unsigned long flags;

 if (!via)
  return;

 spin_lock_irqsave(&pmu_lock, flags);
 pmu_suspended++;
 if (pmu_suspended > 1) {
  spin_unlock_irqrestore(&pmu_lock, flags);
  return;
 }

 do {
  spin_unlock_irqrestore(&pmu_lock, flags);
  if (req_awaiting_reply)
   adb_int_pending = 1;
  via_pmu_interrupt(0, ((void*)0));
  spin_lock_irqsave(&pmu_lock, flags);
  if (!adb_int_pending && pmu_state == idle && !req_awaiting_reply) {
   if (gpio_irq >= 0)
    disable_irq_nosync(gpio_irq);
   out_8(&via[IER], CB1_INT | IER_CLR);
   spin_unlock_irqrestore(&pmu_lock, flags);
   break;
  }
 } while (1);
}
