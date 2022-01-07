
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IXP2000_IRQ_ENABLE_CLR ;
 int ixp2000_reg_wrb (int ,int) ;

__attribute__((used)) static void ixp2000_irq_mask(unsigned int irq)
{
 ixp2000_reg_wrb(IXP2000_IRQ_ENABLE_CLR, (1 << irq));
}
