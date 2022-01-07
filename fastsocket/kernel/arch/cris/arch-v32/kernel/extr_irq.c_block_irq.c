
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRST_IRQ ;
 int REG_RD_INT_VECT (int ,int ,int ,int) ;
 int REG_WR_INT_VECT (int ,int ,int ,int,int) ;
 int intr_vect ;
 int irq_lock ;
 int * irq_regs ;
 int rw_mask ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
block_irq(int irq, int cpu)
{
 int intr_mask;
        unsigned long flags;

 spin_lock_irqsave(&irq_lock, flags);
 if (irq - FIRST_IRQ < 32)
  intr_mask = REG_RD_INT_VECT(intr_vect, irq_regs[cpu],
   rw_mask, 0);
 else
  intr_mask = REG_RD_INT_VECT(intr_vect, irq_regs[cpu],
   rw_mask, 1);


 if (irq - FIRST_IRQ < 32)
  intr_mask &= ~(1 << (irq - FIRST_IRQ));
 else
  intr_mask &= ~(1 << (irq - FIRST_IRQ - 32));

 if (irq - FIRST_IRQ < 32)
  REG_WR_INT_VECT(intr_vect, irq_regs[cpu], rw_mask,
   0, intr_mask);
 else
  REG_WR_INT_VECT(intr_vect, irq_regs[cpu], rw_mask,
   1, intr_mask);
        spin_unlock_irqrestore(&irq_lock, flags);
}
