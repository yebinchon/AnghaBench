
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ A_IMR_MAPPER (int) ;
 int IOADDR (scalar_t__) ;
 scalar_t__ R_IMR_INTERRUPT_MASK ;
 int ____raw_readq (int ) ;
 int ____raw_writeq (int,int ) ;
 int sb1250_imr_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sb1250_mask_irq(int cpu, int irq)
{
 unsigned long flags;
 u64 cur_ints;

 spin_lock_irqsave(&sb1250_imr_lock, flags);
 cur_ints = ____raw_readq(IOADDR(A_IMR_MAPPER(cpu) +
     R_IMR_INTERRUPT_MASK));
 cur_ints |= (((u64) 1) << irq);
 ____raw_writeq(cur_ints, IOADDR(A_IMR_MAPPER(cpu) +
     R_IMR_INTERRUPT_MASK));
 spin_unlock_irqrestore(&sb1250_imr_lock, flags);
}
