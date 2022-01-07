
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTMSK_ADCPARENT ;
 int s3c_irqsub_mask (unsigned int,int ,int) ;

__attribute__((used)) static void
s3c_irq_adc_mask(unsigned int irqno)
{
 s3c_irqsub_mask(irqno, INTMSK_ADCPARENT, 3 << 9);
}
