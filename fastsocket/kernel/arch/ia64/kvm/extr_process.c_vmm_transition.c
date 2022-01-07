
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vpd; int host; int guest; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int PAL_VPS_RESTORE ;
 int PAL_VPS_SAVE ;
 int ia64_call_vsa (int ,unsigned long,int,int ,int ,int ,int ,int ) ;
 int kvm_do_resume_op (struct kvm_vcpu*) ;
 int vmm_trampoline (int *,int *) ;

void vmm_transition(struct kvm_vcpu *vcpu)
{
 ia64_call_vsa(PAL_VPS_SAVE, (unsigned long)vcpu->arch.vpd,
   1, 0, 0, 0, 0, 0);
 vmm_trampoline(&vcpu->arch.guest, &vcpu->arch.host);
 ia64_call_vsa(PAL_VPS_RESTORE, (unsigned long)vcpu->arch.vpd,
      1, 0, 0, 0, 0, 0);
 kvm_do_resume_op(vcpu);
}
