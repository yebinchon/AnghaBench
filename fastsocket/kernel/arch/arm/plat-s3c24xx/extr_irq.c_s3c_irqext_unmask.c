
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EXTINT_OFF ;
 int S3C24XX_EINTMASK ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void
s3c_irqext_unmask(unsigned int irqno)
{
 unsigned long mask;

 irqno -= EXTINT_OFF;

 mask = __raw_readl(S3C24XX_EINTMASK);
 mask &= ~( 1UL << irqno);
 __raw_writel(mask, S3C24XX_EINTMASK);
}
