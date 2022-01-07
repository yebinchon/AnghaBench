
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int irq_ris_enbl; int irq_fal_enbl; int lock; } ;


 int UCB_FALLING ;
 int UCB_IE_FAL ;
 int UCB_IE_RIS ;
 int UCB_RISING ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ucb1x00_disable (struct ucb1x00*) ;
 int ucb1x00_enable (struct ucb1x00*) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,int) ;

void ucb1x00_enable_irq(struct ucb1x00 *ucb, unsigned int idx, int edges)
{
 unsigned long flags;

 if (idx < 16) {
  spin_lock_irqsave(&ucb->lock, flags);

  ucb1x00_enable(ucb);
  if (edges & UCB_RISING) {
   ucb->irq_ris_enbl |= 1 << idx;
   ucb1x00_reg_write(ucb, UCB_IE_RIS, ucb->irq_ris_enbl);
  }
  if (edges & UCB_FALLING) {
   ucb->irq_fal_enbl |= 1 << idx;
   ucb1x00_reg_write(ucb, UCB_IE_FAL, ucb->irq_fal_enbl);
  }
  ucb1x00_disable(ucb);
  spin_unlock_irqrestore(&ucb->lock, flags);
 }
}
