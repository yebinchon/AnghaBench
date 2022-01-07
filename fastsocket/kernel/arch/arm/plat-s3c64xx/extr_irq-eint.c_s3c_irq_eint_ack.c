
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C64XX_EINT0PEND ;
 int __raw_writel (int ,int ) ;
 int eint_irq_to_bit (unsigned int) ;

__attribute__((used)) static inline void s3c_irq_eint_ack(unsigned int irq)
{
 __raw_writel(eint_irq_to_bit(irq), S3C64XX_EINT0PEND);
}
