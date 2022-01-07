
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ GEF_PIC_INTR_MASK (int ) ;
 unsigned int gef_irq_to_hw (unsigned int) ;
 scalar_t__ gef_pic_irq_reg_base ;
 int gef_pic_lock ;
 int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gef_pic_unmask(unsigned int virq)
{
 unsigned long flags;
 unsigned int hwirq;
 u32 mask;

 hwirq = gef_irq_to_hw(virq);

 spin_lock_irqsave(&gef_pic_lock, flags);
 mask = in_be32(gef_pic_irq_reg_base + GEF_PIC_INTR_MASK(0));
 mask |= (1 << hwirq);
 out_be32(gef_pic_irq_reg_base + GEF_PIC_INTR_MASK(0), mask);
 spin_unlock_irqrestore(&gef_pic_lock, flags);
}
