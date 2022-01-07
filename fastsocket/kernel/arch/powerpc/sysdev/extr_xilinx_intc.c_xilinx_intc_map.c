
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int host_data; } ;
typedef size_t irq_hw_number_t ;


 scalar_t__ IRQ_TYPE_LEVEL_HIGH ;
 scalar_t__ IRQ_TYPE_LEVEL_LOW ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int set_irq_chip_and_handler (unsigned int,int *,int ) ;
 int set_irq_chip_data (unsigned int,int ) ;
 int xilinx_intc_edge_irqchip ;
 int xilinx_intc_level_irqchip ;
 scalar_t__* xilinx_intc_typetable ;

__attribute__((used)) static int xilinx_intc_map(struct irq_host *h, unsigned int virq,
      irq_hw_number_t irq)
{
 set_irq_chip_data(virq, h->host_data);

 if (xilinx_intc_typetable[irq] == IRQ_TYPE_LEVEL_HIGH ||
     xilinx_intc_typetable[irq] == IRQ_TYPE_LEVEL_LOW) {
  set_irq_chip_and_handler(virq, &xilinx_intc_level_irqchip,
   handle_level_irq);
 } else {
  set_irq_chip_and_handler(virq, &xilinx_intc_edge_irqchip,
   handle_edge_irq);
 }
 return 0;
}
