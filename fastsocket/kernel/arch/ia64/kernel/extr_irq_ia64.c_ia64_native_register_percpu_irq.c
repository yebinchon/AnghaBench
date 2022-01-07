
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dummy; } ;
struct irq_desc {int * chip; int status; } ;
typedef unsigned int ia64_vector ;


 int BUG_ON (int ) ;
 int CPU_MASK_ALL ;
 int IRQ_PER_CPU ;
 int bind_irq_vector (unsigned int,unsigned int,int ) ;
 struct irq_desc* irq_desc ;
 int irq_type_ia64_lsapic ;
 int setup_irq (unsigned int,struct irqaction*) ;

void
ia64_native_register_percpu_irq (ia64_vector vec, struct irqaction *action)
{
 struct irq_desc *desc;
 unsigned int irq;

 irq = vec;
 BUG_ON(bind_irq_vector(irq, vec, CPU_MASK_ALL));
 desc = irq_desc + irq;
 desc->status |= IRQ_PER_CPU;
 desc->chip = &irq_type_ia64_lsapic;
 if (action)
  setup_irq(irq, action);
}
