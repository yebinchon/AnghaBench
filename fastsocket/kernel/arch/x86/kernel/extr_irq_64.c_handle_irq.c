
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct irq_desc {int dummy; } ;


 int generic_handle_irq_desc (unsigned int,struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int stack_overflow_check (struct pt_regs*) ;
 scalar_t__ unlikely (int) ;

bool handle_irq(unsigned irq, struct pt_regs *regs)
{
 struct irq_desc *desc;

 stack_overflow_check(regs);

 desc = irq_to_desc(irq);
 if (unlikely(!desc))
  return 0;

 generic_handle_irq_desc(irq, desc);
 return 1;
}
