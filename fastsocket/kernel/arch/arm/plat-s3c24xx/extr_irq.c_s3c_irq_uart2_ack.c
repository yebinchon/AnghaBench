
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTMSK_UART2 ;
 int s3c_irqsub_maskack (unsigned int,int ,int) ;

__attribute__((used)) static void
s3c_irq_uart2_ack(unsigned int irqno)
{
 s3c_irqsub_maskack(irqno, INTMSK_UART2, 7 << 6);
}
