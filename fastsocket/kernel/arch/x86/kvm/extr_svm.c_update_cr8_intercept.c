
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int intercept_cr_write; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int INTERCEPT_CR8_MASK ;
 int VMCB_INTERCEPTS ;
 int mark_dirty (TYPE_2__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void update_cr8_intercept(struct kvm_vcpu *vcpu, int tpr, int irr)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (irr == -1)
  return;

 if (tpr >= irr) {
  svm->vmcb->control.intercept_cr_write |= INTERCEPT_CR8_MASK;
  mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
 }
}
