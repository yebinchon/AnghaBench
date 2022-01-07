
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vcpu_svm {TYPE_4__* vmcb; } ;
struct TYPE_6__ {int dr7; } ;
struct kvm_vcpu {int guest_debug; TYPE_2__ arch; } ;
struct TYPE_5__ {int * debugreg; } ;
struct kvm_guest_debug {int control; TYPE_1__ arch; } ;
struct TYPE_7__ {int rflags; int dr7; } ;
struct TYPE_8__ {TYPE_3__ save; } ;


 int KVM_GUESTDBG_SINGLESTEP ;
 int KVM_GUESTDBG_USE_HW_BP ;
 int VMCB_DR ;
 int X86_EFLAGS_RF ;
 int X86_EFLAGS_TF ;
 int mark_dirty (TYPE_4__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int update_db_intercept (struct kvm_vcpu*) ;

__attribute__((used)) static int svm_guest_debug(struct kvm_vcpu *vcpu, struct kvm_guest_debug *dbg)
{
 int old_debug = vcpu->guest_debug;
 struct vcpu_svm *svm = to_svm(vcpu);

 vcpu->guest_debug = dbg->control;

 update_db_intercept(vcpu);

 if (vcpu->guest_debug & KVM_GUESTDBG_USE_HW_BP)
  svm->vmcb->save.dr7 = dbg->arch.debugreg[7];
 else
  svm->vmcb->save.dr7 = vcpu->arch.dr7;
 mark_dirty(svm->vmcb, VMCB_DR);

 if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP)
  svm->vmcb->save.rflags |= X86_EFLAGS_TF | X86_EFLAGS_RF;
 else if (old_debug & KVM_GUESTDBG_SINGLESTEP)
  svm->vmcb->save.rflags &= ~(X86_EFLAGS_TF | X86_EFLAGS_RF);

 return 0;
}
