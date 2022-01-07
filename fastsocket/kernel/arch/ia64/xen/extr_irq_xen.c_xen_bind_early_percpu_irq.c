
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int action; int irq; } ;


 int __xen_register_percpu_irq (int ,int ,int ,int ) ;
 int late_irq_cnt ;
 TYPE_1__* saved_percpu_irqs ;
 int smp_processor_id () ;
 int xen_slab_ready ;

__attribute__((used)) static void
xen_bind_early_percpu_irq(void)
{
 int i;

 xen_slab_ready = 1;



 for (i = 0; i < late_irq_cnt; i++)
  __xen_register_percpu_irq(smp_processor_id(),
       saved_percpu_irqs[i].irq,
       saved_percpu_irqs[i].action, 0);
}
