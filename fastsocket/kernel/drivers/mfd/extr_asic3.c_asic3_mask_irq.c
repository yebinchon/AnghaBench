
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asic3 {unsigned int irq_base; int lock; } ;


 unsigned int ASIC3_INTMASK_MASK0 ;
 scalar_t__ ASIC3_INTR_BASE ;
 scalar_t__ ASIC3_INTR_INT_MASK ;
 unsigned int ASIC3_NUM_GPIOS ;
 int asic3_read_register (struct asic3*,scalar_t__) ;
 int asic3_write_register (struct asic3*,scalar_t__,int) ;
 struct asic3* get_irq_chip_data (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void asic3_mask_irq(unsigned int irq)
{
 struct asic3 *asic = get_irq_chip_data(irq);
 int regval;
 unsigned long flags;

 spin_lock_irqsave(&asic->lock, flags);
 regval = asic3_read_register(asic,
         ASIC3_INTR_BASE +
         ASIC3_INTR_INT_MASK);

 regval &= ~(ASIC3_INTMASK_MASK0 <<
      (irq - (asic->irq_base + ASIC3_NUM_GPIOS)));

 asic3_write_register(asic,
        ASIC3_INTR_BASE +
        ASIC3_INTR_INT_MASK,
        regval);
 spin_unlock_irqrestore(&asic->lock, flags);
}
