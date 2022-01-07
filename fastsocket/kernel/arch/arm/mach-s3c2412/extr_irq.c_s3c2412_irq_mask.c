
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_EINT0 ;
 int S3C2410_INTMSK ;
 int S3C2412_EINTMASK ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void
s3c2412_irq_mask(unsigned int irqno)
{
 unsigned long bitval = 1UL << (irqno - IRQ_EINT0);
 unsigned long mask;

 mask = __raw_readl(S3C2410_INTMSK);
 __raw_writel(mask | bitval, S3C2410_INTMSK);

 mask = __raw_readl(S3C2412_EINTMASK);
 __raw_writel(mask | bitval, S3C2412_EINTMASK);
}
