
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vcpu_svm {TYPE_3__* vmcb; } ;
struct kvm_vcpu {int fpu_active; } ;
struct TYPE_5__ {int cr0; } ;
struct TYPE_4__ {int intercept_exceptions; } ;
struct TYPE_6__ {TYPE_2__ save; TYPE_1__ control; } ;


 int NM_VECTOR ;
 int VMCB_CR ;
 int VMCB_INTERCEPTS ;
 int X86_CR0_TS ;
 int mark_dirty (TYPE_3__*,int ) ;
 scalar_t__ npt_enabled ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_fpu_deactivate(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (npt_enabled) {

  vcpu->fpu_active = 1;
  return;
 }

 svm->vmcb->control.intercept_exceptions |= 1 << NM_VECTOR;
 svm->vmcb->save.cr0 |= X86_CR0_TS;
 mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
 mark_dirty(svm->vmcb, VMCB_CR);
}
