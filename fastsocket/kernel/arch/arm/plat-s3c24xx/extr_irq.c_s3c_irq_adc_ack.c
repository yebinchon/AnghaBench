
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTMSK_ADCPARENT ;
 int s3c_irqsub_ack (unsigned int,int ,int) ;

__attribute__((used)) static void
s3c_irq_adc_ack(unsigned int irqno)
{
 s3c_irqsub_ack(irqno, INTMSK_ADCPARENT, 3 << 9);
}
