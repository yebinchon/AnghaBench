
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int IRQ_S3CUART_RX0 ;
 int s3c_irq_demux_uart (int ) ;

__attribute__((used)) static void
s3c_irq_demux_uart0(unsigned int irq,
      struct irq_desc *desc)
{
 irq = irq;
 s3c_irq_demux_uart(IRQ_S3CUART_RX0);
}
