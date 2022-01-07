
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* IXP23XX_INTR_EN1 ;

__attribute__((used)) static void ixp23xx_irq_mask(unsigned int irq)
{
 volatile unsigned long *intr_reg;

 if (irq >= 56)
  irq += 8;

 intr_reg = IXP23XX_INTR_EN1 + (irq / 32);
 *intr_reg &= ~(1 << (irq % 32));
}
