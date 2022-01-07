
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EXTINT_OFF ;
 int IRQ_EINT4t7 ;
 unsigned int IRQ_EINT7 ;
 int IRQ_EINT8t23 ;
 int S3C24XX_EINTMASK ;
 int S3C24XX_EINTPEND ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int s3c_irq_ack (int ) ;

__attribute__((used)) static void
s3c_irqext_ack(unsigned int irqno)
{
 unsigned long req;
 unsigned long bit;
 unsigned long mask;

 bit = 1UL << (irqno - EXTINT_OFF);

 mask = __raw_readl(S3C24XX_EINTMASK);

 __raw_writel(bit, S3C24XX_EINTPEND);

 req = __raw_readl(S3C24XX_EINTPEND);
 req &= ~mask;



 if (irqno <= IRQ_EINT7 ) {
  if ((req & 0xf0) == 0)
   s3c_irq_ack(IRQ_EINT4t7);
 } else {
  if ((req >> 8) == 0)
   s3c_irq_ack(IRQ_EINT8t23);
 }
}
