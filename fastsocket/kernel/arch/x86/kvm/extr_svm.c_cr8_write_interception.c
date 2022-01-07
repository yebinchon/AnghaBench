
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int kvm; struct kvm_run* run; } ;
struct vcpu_svm {TYPE_3__ vcpu; TYPE_2__* vmcb; } ;
struct kvm_run {int exit_reason; } ;
struct TYPE_4__ {int intercept_cr_write; } ;
struct TYPE_5__ {TYPE_1__ control; } ;


 int INTERCEPT_CR8_MASK ;
 int KVM_EXIT_SET_TPR ;
 int VMCB_INTERCEPTS ;
 int cr_interception (struct vcpu_svm*) ;
 scalar_t__ irqchip_in_kernel (int ) ;
 scalar_t__ kvm_get_cr8 (TYPE_3__*) ;
 int mark_dirty (TYPE_2__*,int ) ;

__attribute__((used)) static int cr8_write_interception(struct vcpu_svm *svm)
{
 struct kvm_run *kvm_run = svm->vcpu.run;
 int r;

 u8 cr8_prev = kvm_get_cr8(&svm->vcpu);

 r = cr_interception(svm);
 if (irqchip_in_kernel(svm->vcpu.kvm)) {
  svm->vmcb->control.intercept_cr_write &= ~INTERCEPT_CR8_MASK;
  mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
  return r;
 }
 if (cr8_prev <= kvm_get_cr8(&svm->vcpu))
  return r;
 kvm_run->exit_reason = KVM_EXIT_SET_TPR;
 return 0;
}
