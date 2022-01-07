
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int CPLD_INT_MASK_REG ;
 int MXC_IRQ_TO_EXPIO (int) ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void expio_mask_irq(uint32_t irq)
{
 uint16_t reg;
 uint32_t expio = MXC_IRQ_TO_EXPIO(irq);


 reg = __raw_readw(CPLD_INT_MASK_REG);
 reg |= 1 << expio;
 __raw_writew(reg, CPLD_INT_MASK_REG);
}
