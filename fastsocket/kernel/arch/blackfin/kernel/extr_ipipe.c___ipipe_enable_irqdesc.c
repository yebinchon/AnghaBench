
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {scalar_t__ depth; } ;
struct ipipe_domain {int dummy; } ;


 int __ipipe_get_irq_priority (unsigned int) ;
 int * __ipipe_irq_lvdepth ;
 int __ipipe_irq_lvmask ;
 int __set_bit (int,int *) ;
 int atomic_inc_return (int *) ;
 struct ipipe_domain ipipe_root ;
 struct irq_desc* irq_to_desc (unsigned int) ;

void __ipipe_enable_irqdesc(struct ipipe_domain *ipd, unsigned irq)
{
 struct irq_desc *desc = irq_to_desc(irq);
 int prio = __ipipe_get_irq_priority(irq);

 desc->depth = 0;
 if (ipd != &ipipe_root &&
     atomic_inc_return(&__ipipe_irq_lvdepth[prio]) == 1)
  __set_bit(prio, &__ipipe_irq_lvmask);
}
