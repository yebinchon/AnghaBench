
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IXP2000_IRQ_ENABLE_SET ;
 int ixp2000_reg_write (int ,int) ;

__attribute__((used)) static void ixp2000_irq_unmask(unsigned int irq)
{
 ixp2000_reg_write(IXP2000_IRQ_ENABLE_SET, (1 << irq));
}
