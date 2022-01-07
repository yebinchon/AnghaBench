
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_EINT0 ;
 int S3C2410_INTPND ;
 int S3C2410_SRCPND ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static inline void
s3c_irq_ack(unsigned int irqno)
{
 unsigned long bitval = 1UL << (irqno - IRQ_EINT0);

 __raw_writel(bitval, S3C2410_SRCPND);
 __raw_writel(bitval, S3C2410_INTPND);
}
