
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int depth; int * chip; scalar_t__ action; int status; } ;


 int CO_APIC_LAST ;
 int CO_IRQ_8259 ;
 int CO_IRQ_APIC0 ;
 int CO_IRQ_IDE0 ;
 int CO_IRQ_IDE1 ;
 int IRQ_DISABLED ;
 scalar_t__ IS_CO_APIC (int) ;
 int cascade_action ;
 int cobalt_irq_type ;
 struct irq_desc* irq_to_desc (int) ;
 int master_action ;
 int piix4_master_irq_type ;
 int piix4_virtual_irq_type ;
 int setup_irq (int,int *) ;

void init_VISWS_APIC_irqs(void)
{
 int i;

 for (i = 0; i < CO_IRQ_APIC0 + CO_APIC_LAST + 1; i++) {
  struct irq_desc *desc = irq_to_desc(i);

  desc->status = IRQ_DISABLED;
  desc->action = 0;
  desc->depth = 1;

  if (i == 0) {
   desc->chip = &cobalt_irq_type;
  }
  else if (i == CO_IRQ_IDE0) {
   desc->chip = &cobalt_irq_type;
  }
  else if (i == CO_IRQ_IDE1) {
   desc->chip = &cobalt_irq_type;
  }
  else if (i == CO_IRQ_8259) {
   desc->chip = &piix4_master_irq_type;
  }
  else if (i < CO_IRQ_APIC0) {
   desc->chip = &piix4_virtual_irq_type;
  }
  else if (IS_CO_APIC(i)) {
   desc->chip = &cobalt_irq_type;
  }
 }

 setup_irq(CO_IRQ_8259, &master_action);
 setup_irq(2, &cascade_action);
}
