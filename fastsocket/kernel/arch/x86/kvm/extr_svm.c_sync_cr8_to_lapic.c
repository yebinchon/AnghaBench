
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int intercept_cr_write; int int_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int INTERCEPT_CR8_MASK ;
 int V_TPR_MASK ;
 int kvm_set_cr8 (struct kvm_vcpu*,int) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static inline void sync_cr8_to_lapic(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (!(svm->vmcb->control.intercept_cr_write & INTERCEPT_CR8_MASK)) {
  int cr8 = svm->vmcb->control.int_ctl & V_TPR_MASK;
  kvm_set_cr8(vcpu, cr8);
 }
}
