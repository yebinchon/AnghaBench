
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipipe_domain {int dummy; } ;


 int __clear_bit (int,int *) ;
 int __ipipe_get_irq_priority (unsigned int) ;
 int * __ipipe_irq_lvdepth ;
 int __ipipe_irq_lvmask ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct ipipe_domain ipipe_root ;

void __ipipe_disable_irqdesc(struct ipipe_domain *ipd, unsigned irq)
{
 int prio = __ipipe_get_irq_priority(irq);

 if (ipd != &ipipe_root &&
     atomic_dec_and_test(&__ipipe_irq_lvdepth[prio]))
  __clear_bit(prio, &__ipipe_irq_lvmask);
}
