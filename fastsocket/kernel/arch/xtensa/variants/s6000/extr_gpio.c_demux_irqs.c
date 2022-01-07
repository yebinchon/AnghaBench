
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;int (* ack ) (unsigned int) ;int (* mask ) (unsigned int) ;} ;


 int IRQ_BASE ;
 scalar_t__ S6_GPIO_BANK (int ) ;
 scalar_t__ S6_GPIO_MIS ;
 scalar_t__ S6_REG_GPIO ;
 int ffs (int) ;
 int generic_handle_irq (int) ;
 int* get_irq_desc_data (struct irq_desc*) ;
 int readb (scalar_t__) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 int stub3 (unsigned int) ;

__attribute__((used)) static void demux_irqs(unsigned int irq, struct irq_desc *desc)
{
 u8 *mask = get_irq_desc_data(desc);
 u8 pending;
 int cirq;

 desc->chip->mask(irq);
 desc->chip->ack(irq);
 pending = readb(S6_REG_GPIO + S6_GPIO_BANK(0) + S6_GPIO_MIS) & *mask;
 cirq = IRQ_BASE - 1;
 while (pending) {
  int n = ffs(pending);
  cirq += n;
  pending >>= n;
  generic_handle_irq(cirq);
 }
 desc->chip->unmask(irq);
}
