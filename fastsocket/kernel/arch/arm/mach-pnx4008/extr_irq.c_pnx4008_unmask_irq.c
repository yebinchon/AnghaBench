
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTC_BIT (unsigned int) ;
 int INTC_ER (unsigned int) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void pnx4008_unmask_irq(unsigned int irq)
{
 __raw_writel(__raw_readl(INTC_ER(irq)) | INTC_BIT(irq), INTC_ER(irq));
}
