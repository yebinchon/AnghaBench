
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;int (* mask_ack ) (unsigned int) ;} ;


 int FPGA_IRQ (int) ;
 int FPGA_ISR ;
 int __raw_readb (int ) ;
 int fls (int) ;
 int generic_handle_irq (int ) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;

__attribute__((used)) static void a9m9750dev_fpga_demux_handler(unsigned int irq,
  struct irq_desc *desc)
{
 u8 stat = __raw_readb(FPGA_ISR);

 desc->chip->mask_ack(irq);

 while (stat != 0) {
  int irqno = fls(stat) - 1;

  stat &= ~(1 << irqno);

  generic_handle_irq(FPGA_IRQ(irqno));
 }

 desc->chip->unmask(irq);
}
