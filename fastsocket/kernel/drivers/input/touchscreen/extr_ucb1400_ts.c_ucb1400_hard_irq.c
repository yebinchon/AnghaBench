
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int irq; int irq_pending; int ts_wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int disable_irq_nosync (int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t ucb1400_hard_irq(int irqnr, void *devid)
{
 struct ucb1400_ts *ucb = devid;

 if (irqnr == ucb->irq) {
  disable_irq_nosync(ucb->irq);
  ucb->irq_pending = 1;
  wake_up(&ucb->ts_wait);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
