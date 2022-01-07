
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_IXP2000_GPIO0 ;
 int IXP2000_GPIO_INSR ;
 int ixp2000_reg_write (int ,int) ;

__attribute__((used)) static void ixp2000_GPIO_irq_unmask(unsigned int irq)
{
 ixp2000_reg_write(IXP2000_GPIO_INSR, (1 << (irq - IRQ_IXP2000_GPIO0)));
}
