
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PIC_IMR ;
 scalar_t__ RM200_I8259A_IRQ_BASE ;
 int cached_master_mask ;
 int cached_slave_mask ;
 unsigned int rm200_cached_irq_mask ;
 scalar_t__ rm200_pic_master ;
 scalar_t__ rm200_pic_slave ;
 int sni_rm200_i8259A_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void sni_rm200_enable_8259A_irq(unsigned int irq)
{
 unsigned int mask;
 unsigned long flags;

 irq -= RM200_I8259A_IRQ_BASE;
 mask = ~(1 << irq);
 spin_lock_irqsave(&sni_rm200_i8259A_lock, flags);
 rm200_cached_irq_mask &= mask;
 if (irq & 8)
  writeb(cached_slave_mask, rm200_pic_slave + PIC_IMR);
 else
  writeb(cached_master_mask, rm200_pic_master + PIC_IMR);
 spin_unlock_irqrestore(&sni_rm200_i8259A_lock, flags);
}
