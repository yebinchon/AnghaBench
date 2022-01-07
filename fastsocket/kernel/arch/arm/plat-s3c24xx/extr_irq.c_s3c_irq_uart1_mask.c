
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTMSK_UART1 ;
 int s3c_irqsub_mask (unsigned int,int ,int) ;

__attribute__((used)) static void
s3c_irq_uart1_mask(unsigned int irqno)
{
 s3c_irqsub_mask(irqno, INTMSK_UART1, 7 << 3);
}
