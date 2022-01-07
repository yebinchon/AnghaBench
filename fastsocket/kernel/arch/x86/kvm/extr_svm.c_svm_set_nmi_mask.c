
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int hflags; } ;
struct TYPE_6__ {TYPE_3__ arch; } ;
struct vcpu_svm {TYPE_4__* vmcb; TYPE_2__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_5__ {unsigned long intercept; } ;
struct TYPE_8__ {TYPE_1__ control; } ;


 int HF_NMI_MASK ;
 unsigned long INTERCEPT_IRET ;
 int VMCB_INTERCEPTS ;
 int mark_dirty (TYPE_4__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_set_nmi_mask(struct kvm_vcpu *vcpu, bool masked)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (masked) {
  svm->vcpu.arch.hflags |= HF_NMI_MASK;
  svm->vmcb->control.intercept |= (1UL << INTERCEPT_IRET);
 } else {
  svm->vcpu.arch.hflags &= ~HF_NMI_MASK;
  svm->vmcb->control.intercept &= ~(1UL << INTERCEPT_IRET);
 }
 mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
}
