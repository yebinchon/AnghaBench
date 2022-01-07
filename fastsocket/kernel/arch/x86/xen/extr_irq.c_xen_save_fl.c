
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_info {int evtchn_upcall_mask; } ;


 unsigned long X86_EFLAGS_IF ;
 struct vcpu_info* percpu_read (int ) ;
 int xen_vcpu ;

__attribute__((used)) static unsigned long xen_save_fl(void)
{
 struct vcpu_info *vcpu;
 unsigned long flags;

 vcpu = percpu_read(xen_vcpu);


 flags = !vcpu->evtchn_upcall_mask;





 return (-flags) & X86_EFLAGS_IF;
}
