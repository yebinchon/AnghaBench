
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vcpu_svm {TYPE_3__* vmcb; } ;
struct TYPE_4__ {scalar_t__ singlestep; } ;
struct kvm_vcpu {int guest_debug; TYPE_1__ arch; } ;
struct TYPE_5__ {int intercept_exceptions; } ;
struct TYPE_6__ {TYPE_2__ control; } ;


 int BP_VECTOR ;
 int DB_VECTOR ;
 int KVM_GUESTDBG_ENABLE ;
 int KVM_GUESTDBG_SINGLESTEP ;
 int KVM_GUESTDBG_USE_HW_BP ;
 int KVM_GUESTDBG_USE_SW_BP ;
 int VMCB_INTERCEPTS ;
 int mark_dirty (TYPE_3__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void update_db_intercept(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 svm->vmcb->control.intercept_exceptions &=
  ~((1 << DB_VECTOR) | (1 << BP_VECTOR));

 if (vcpu->arch.singlestep)
  svm->vmcb->control.intercept_exceptions |= (1 << DB_VECTOR);

 if (vcpu->guest_debug & KVM_GUESTDBG_ENABLE) {
  if (vcpu->guest_debug &
      (KVM_GUESTDBG_SINGLESTEP | KVM_GUESTDBG_USE_HW_BP))
   svm->vmcb->control.intercept_exceptions |=
    1 << DB_VECTOR;
  if (vcpu->guest_debug & KVM_GUESTDBG_USE_SW_BP)
   svm->vmcb->control.intercept_exceptions |=
    1 << BP_VECTOR;
 } else
  vcpu->guest_debug = 0;

 mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
}
