
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int IRQ_EINT4 ;
 int S3C24XX_EINTMASK ;
 int S3C24XX_EINTPEND ;
 unsigned int __ffs (unsigned long) ;
 unsigned long __raw_readl (int ) ;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static void
s3c_irq_demux_extint8(unsigned int irq,
        struct irq_desc *desc)
{
 unsigned long eintpnd = __raw_readl(S3C24XX_EINTPEND);
 unsigned long eintmsk = __raw_readl(S3C24XX_EINTMASK);

 eintpnd &= ~eintmsk;
 eintpnd &= ~0xff;



 while (eintpnd) {
  irq = __ffs(eintpnd);
  eintpnd &= ~(1<<irq);

  irq += (IRQ_EINT4 - 4);
  generic_handle_irq(irq);
 }

}
