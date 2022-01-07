
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int status; } ;


 int IRQ_LEVEL ;
 int handle_edge_irq ;
 int lapic_chip ;
 int set_irq_chip_and_handler_name (int,int *,int ,char*) ;

__attribute__((used)) static void lapic_register_intr(int irq, struct irq_desc *desc)
{
 desc->status &= ~IRQ_LEVEL;
 set_irq_chip_and_handler_name(irq, &lapic_chip, handle_edge_irq,
          "edge");
}
