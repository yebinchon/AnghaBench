
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int status; } ;


 unsigned long IOAPIC_AUTO ;
 unsigned long IOAPIC_LEVEL ;
 scalar_t__ IO_APIC_irq_trigger (int) ;
 int IRQ_LEVEL ;
 int IRQ_MOVE_PCNTXT ;
 int handle_edge_irq ;
 int handle_fasteoi_irq ;
 int ioapic_chip ;
 int ir_ioapic_chip ;
 scalar_t__ irq_remapped (int) ;
 int set_irq_chip_and_handler_name (int,int *,int ,char*) ;

__attribute__((used)) static void ioapic_register_intr(int irq, struct irq_desc *desc, unsigned long trigger)
{

 if ((trigger == IOAPIC_AUTO && IO_APIC_irq_trigger(irq)) ||
     trigger == IOAPIC_LEVEL)
  desc->status |= IRQ_LEVEL;
 else
  desc->status &= ~IRQ_LEVEL;

 if (irq_remapped(irq)) {
  desc->status |= IRQ_MOVE_PCNTXT;
  if (trigger)
   set_irq_chip_and_handler_name(irq, &ir_ioapic_chip,
            handle_fasteoi_irq,
           "fasteoi");
  else
   set_irq_chip_and_handler_name(irq, &ir_ioapic_chip,
            handle_edge_irq, "edge");
  return;
 }

 if ((trigger == IOAPIC_AUTO && IO_APIC_irq_trigger(irq)) ||
     trigger == IOAPIC_LEVEL)
  set_irq_chip_and_handler_name(irq, &ioapic_chip,
           handle_fasteoi_irq,
           "fasteoi");
 else
  set_irq_chip_and_handler_name(irq, &ioapic_chip,
           handle_edge_irq, "edge");
}
