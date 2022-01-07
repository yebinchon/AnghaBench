
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRQ_EINT0 ;
 unsigned int IRQ_EINT8t23 ;
 unsigned int IRQ_TIMER4 ;
 int S3C2410_INTMSK ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int irqdbf2 (char*,unsigned int) ;

__attribute__((used)) static void
s3c_irq_unmask(unsigned int irqno)
{
 unsigned long mask;

 if (irqno != IRQ_TIMER4 && irqno != IRQ_EINT8t23)
  irqdbf2("s3c_irq_unmask %d\n", irqno);

 irqno -= IRQ_EINT0;

 mask = __raw_readl(S3C2410_INTMSK);
 mask &= ~(1UL << irqno);
 __raw_writel(mask, S3C2410_INTMSK);
}
