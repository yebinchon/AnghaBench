
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct irq_desc {int (* handle_irq ) (unsigned int,struct irq_desc*) ;} ;


 int check_stack_overflow () ;
 int execute_on_irq_stack (int,struct irq_desc*,unsigned int) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int print_stack_overflow () ;
 int stub1 (unsigned int,struct irq_desc*) ;
 scalar_t__ unlikely (int) ;

bool handle_irq(unsigned irq, struct pt_regs *regs)
{
 struct irq_desc *desc;
 int overflow;

 overflow = check_stack_overflow();

 desc = irq_to_desc(irq);
 if (unlikely(!desc))
  return 0;

 if (!execute_on_irq_stack(overflow, desc, irq)) {
  if (unlikely(overflow))
   print_stack_overflow();
  desc->handle_irq(irq, desc);
 }

 return 1;
}
