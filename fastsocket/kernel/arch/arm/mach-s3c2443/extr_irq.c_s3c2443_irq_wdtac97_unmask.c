
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTMSK_WDTAC97 ;
 int s3c_irqsub_unmask (unsigned int,int ) ;

__attribute__((used)) static void s3c2443_irq_wdtac97_unmask(unsigned int irqno)
{
 s3c_irqsub_unmask(irqno, INTMSK_WDTAC97);
}
