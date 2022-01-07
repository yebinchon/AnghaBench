
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vpd; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int PAL_VPS_RESTORE ;
 struct kvm_vcpu* current_vcpu ;
 int ia64_call_vsa (int ,unsigned long,int ,int ,int ,int ,int ,int ) ;
 int init_vcpu (struct kvm_vcpu*) ;
 int kvm_init_all_rr (struct kvm_vcpu*) ;
 int kvm_init_vhpt (struct kvm_vcpu*) ;
 int kvm_init_vtlb (struct kvm_vcpu*) ;
 int vmm_reset_entry () ;

int vmm_entry(void)
{
 struct kvm_vcpu *v;
 v = current_vcpu;

 ia64_call_vsa(PAL_VPS_RESTORE, (unsigned long)v->arch.vpd,
      0, 0, 0, 0, 0, 0);
 kvm_init_vtlb(v);
 kvm_init_vhpt(v);
 init_vcpu(v);
 kvm_init_all_rr(v);
 vmm_reset_entry();

 return 0;
}
