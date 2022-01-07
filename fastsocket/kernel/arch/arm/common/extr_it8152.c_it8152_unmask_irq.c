
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IT8152_INTC_LDCNIMR ;
 int IT8152_INTC_LPCNIMR ;
 int IT8152_INTC_PDCNIMR ;
 unsigned int IT8152_LD_IRQ (int ) ;
 unsigned int IT8152_LP_IRQ (int ) ;
 unsigned int IT8152_PD_IRQ (int ) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void it8152_unmask_irq(unsigned int irq)
{
       if (irq >= IT8152_LD_IRQ(0)) {
        __raw_writel((__raw_readl(IT8152_INTC_LDCNIMR) &
        ~(1 << (irq - IT8152_LD_IRQ(0)))),
       IT8152_INTC_LDCNIMR);
       } else if (irq >= IT8152_LP_IRQ(0)) {
        __raw_writel((__raw_readl(IT8152_INTC_LPCNIMR) &
        ~(1 << (irq - IT8152_LP_IRQ(0)))),
       IT8152_INTC_LPCNIMR);
       } else if (irq >= IT8152_PD_IRQ(0)) {
        __raw_writel((__raw_readl(IT8152_INTC_PDCNIMR) &
        ~(1 << (irq - IT8152_PD_IRQ(0)))),
       IT8152_INTC_PDCNIMR);
       }
}
