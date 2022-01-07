
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int action; int irq; } ;


 int __xen_register_percpu_irq (unsigned int,int ,int ,int ) ;
 unsigned int saved_irq_cnt ;
 TYPE_1__* saved_percpu_irqs ;

void xen_smp_intr_init_early(unsigned int cpu)
{







}
