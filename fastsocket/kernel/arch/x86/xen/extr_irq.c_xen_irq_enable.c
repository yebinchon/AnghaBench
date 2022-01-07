
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_info {int evtchn_upcall_pending; scalar_t__ evtchn_upcall_mask; } ;


 int barrier () ;
 struct vcpu_info* percpu_read (int ) ;
 scalar_t__ unlikely (int ) ;
 int xen_force_evtchn_callback () ;
 int xen_vcpu ;

__attribute__((used)) static void xen_irq_enable(void)
{
 struct vcpu_info *vcpu;






 vcpu = percpu_read(xen_vcpu);
 vcpu->evtchn_upcall_mask = 0;




 barrier();
 if (unlikely(vcpu->evtchn_upcall_pending))
  xen_force_evtchn_callback();
}
