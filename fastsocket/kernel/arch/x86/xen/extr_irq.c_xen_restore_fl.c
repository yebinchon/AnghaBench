
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_info {unsigned long evtchn_upcall_mask; int evtchn_upcall_pending; } ;


 unsigned long X86_EFLAGS_IF ;
 int barrier () ;
 struct vcpu_info* percpu_read (int ) ;
 int preempt_check_resched () ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 scalar_t__ unlikely (int ) ;
 int xen_force_evtchn_callback () ;
 int xen_vcpu ;

__attribute__((used)) static void xen_restore_fl(unsigned long flags)
{
 struct vcpu_info *vcpu;


 flags = !(flags & X86_EFLAGS_IF);




 preempt_disable();
 vcpu = percpu_read(xen_vcpu);
 vcpu->evtchn_upcall_mask = flags;
 preempt_enable_no_resched();




 if (flags == 0) {
  preempt_check_resched();
  barrier();
  if (unlikely(vcpu->evtchn_upcall_pending))
   xen_force_evtchn_callback();
 }
}
