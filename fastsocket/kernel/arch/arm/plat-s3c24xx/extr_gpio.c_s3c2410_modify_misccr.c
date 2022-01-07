
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C24XX_MISCCR ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

unsigned int s3c2410_modify_misccr(unsigned int clear, unsigned int change)
{
 unsigned long flags;
 unsigned long misccr;

 local_irq_save(flags);
 misccr = __raw_readl(S3C24XX_MISCCR);
 misccr &= ~clear;
 misccr ^= change;
 __raw_writel(misccr, S3C24XX_MISCCR);
 local_irq_restore(flags);

 return misccr;
}
