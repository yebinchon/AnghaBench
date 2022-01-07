
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct irq_desc {int (* handle_irq ) (unsigned int,struct irq_desc*) ;} ;


 int __ipipe_handle_irq (unsigned int,struct pt_regs*) ;
 int ipipe_trace_irq_entry (unsigned int) ;
 int ipipe_trace_irq_exit (unsigned int) ;
 struct irq_desc* irq_desc ;
 int stub1 (unsigned int,struct irq_desc*) ;

__attribute__((used)) static void bfin_handle_irq(unsigned irq)
{






 struct irq_desc *desc = irq_desc + irq;
 desc->handle_irq(irq, desc);

}
