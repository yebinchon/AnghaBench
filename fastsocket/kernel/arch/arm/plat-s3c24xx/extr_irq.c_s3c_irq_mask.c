
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRQ_EINT0 ;
 int S3C2410_INTMSK ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void
s3c_irq_mask(unsigned int irqno)
{
 unsigned long mask;

 irqno -= IRQ_EINT0;

 mask = __raw_readl(S3C2410_INTMSK);
 mask |= 1UL << irqno;
 __raw_writel(mask, S3C2410_INTMSK);
}
