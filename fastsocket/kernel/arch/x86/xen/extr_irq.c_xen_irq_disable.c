
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int evtchn_upcall_mask; } ;


 TYPE_1__* percpu_read (int ) ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int xen_vcpu ;

__attribute__((used)) static void xen_irq_disable(void)
{



 preempt_disable();
 percpu_read(xen_vcpu)->evtchn_upcall_mask = 1;
 preempt_enable_no_resched();
}
