
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vcpu_svm {TYPE_3__* vmcb; } ;
struct TYPE_4__ {int shadow_efer; unsigned long cr0; } ;
struct kvm_vcpu {int fpu_active; TYPE_1__ arch; } ;
struct TYPE_5__ {int efer; unsigned long cr0; } ;
struct TYPE_6__ {TYPE_2__ save; } ;


 int EFER_LMA ;
 int EFER_LME ;
 int VMCB_CR ;
 unsigned long X86_CR0_CD ;
 unsigned long X86_CR0_NW ;
 unsigned long X86_CR0_PG ;
 unsigned long X86_CR0_TS ;
 unsigned long X86_CR0_WP ;
 scalar_t__ is_paging (struct kvm_vcpu*) ;
 int mark_dirty (TYPE_3__*,int ) ;
 scalar_t__ npt_enabled ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_set_cr0(struct kvm_vcpu *vcpu, unsigned long cr0)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 if (npt_enabled)
  goto set;

 vcpu->arch.cr0 = cr0;
 cr0 |= X86_CR0_PG | X86_CR0_WP;

 if (!vcpu->fpu_active)
  cr0 |= X86_CR0_TS;
set:





 cr0 &= ~(X86_CR0_CD | X86_CR0_NW);
 svm->vmcb->save.cr0 = cr0;
 mark_dirty(to_svm(vcpu)->vmcb, VMCB_CR);
}
