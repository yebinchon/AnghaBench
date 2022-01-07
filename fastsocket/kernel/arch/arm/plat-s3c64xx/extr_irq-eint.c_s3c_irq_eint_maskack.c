
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s3c_irq_eint_ack (unsigned int) ;
 int s3c_irq_eint_mask (unsigned int) ;

__attribute__((used)) static void s3c_irq_eint_maskack(unsigned int irq)
{

 s3c_irq_eint_mask(irq);
 s3c_irq_eint_ack(irq);
}
