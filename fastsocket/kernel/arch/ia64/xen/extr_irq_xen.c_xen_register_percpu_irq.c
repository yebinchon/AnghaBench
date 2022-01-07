
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dummy; } ;
typedef int ia64_vector ;


 int __xen_register_percpu_irq (int ,int ,struct irqaction*,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void
xen_register_percpu_irq(ia64_vector vec, struct irqaction *action)
{
 __xen_register_percpu_irq(smp_processor_id(), vec, action, 1);
}
