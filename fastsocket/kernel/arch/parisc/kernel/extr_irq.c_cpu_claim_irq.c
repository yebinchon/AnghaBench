
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_chip {int (* enable ) (unsigned int) ;} ;
struct TYPE_2__ {void* chip_data; struct irq_chip* chip; scalar_t__ action; } ;


 int EBUSY ;
 struct irq_chip cpu_interrupt_type ;
 TYPE_1__* irq_desc ;
 int stub1 (unsigned int) ;

int cpu_claim_irq(unsigned int irq, struct irq_chip *type, void *data)
{
 if (irq_desc[irq].action)
  return -EBUSY;
 if (irq_desc[irq].chip != &cpu_interrupt_type)
  return -EBUSY;

 if (type) {
  irq_desc[irq].chip = type;
  irq_desc[irq].chip_data = data;
  cpu_interrupt_type.enable(irq);
 }
 return 0;
}
