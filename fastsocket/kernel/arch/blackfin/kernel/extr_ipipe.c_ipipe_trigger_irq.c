
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int IPIPE_NR_IRQS ;
 unsigned int IPIPE_VIRQ_BASE ;
 int __ipipe_handle_irq (unsigned int,int *) ;
 int __ipipe_virtual_irq_map ;
 scalar_t__ ipipe_virtual_irq_p (unsigned int) ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;
 int test_bit (unsigned int,int *) ;

int ipipe_trigger_irq(unsigned irq)
{
 unsigned long flags;
 local_irq_save_hw(flags);
 __ipipe_handle_irq(irq, ((void*)0));
 local_irq_restore_hw(flags);

 return 1;
}
