
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC_MASTER_IMR ;
 int PIC_SLAVE_IMR ;
 int cached_master_mask ;
 int cached_slave_mask ;
 int i8259A_lock ;
 int outb (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void unmask_8259A(void)
{
 unsigned long flags;

 spin_lock_irqsave(&i8259A_lock, flags);

 outb(cached_master_mask, PIC_MASTER_IMR);
 outb(cached_slave_mask, PIC_SLAVE_IMR);

 spin_unlock_irqrestore(&i8259A_lock, flags);
}
