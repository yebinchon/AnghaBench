
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vcpu_svm {TYPE_4__* vmcb; } ;
struct TYPE_5__ {int nmi_injections; } ;
struct TYPE_6__ {int hflags; } ;
struct kvm_vcpu {TYPE_1__ stat; TYPE_2__ arch; } ;
struct TYPE_7__ {int event_inj; unsigned long intercept; } ;
struct TYPE_8__ {TYPE_3__ control; } ;


 int HF_NMI_MASK ;
 unsigned long INTERCEPT_IRET ;
 int SVM_EVTINJ_TYPE_NMI ;
 int SVM_EVTINJ_VALID ;
 int VMCB_INTERCEPTS ;
 int mark_dirty (TYPE_4__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_inject_nmi(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 svm->vmcb->control.event_inj = SVM_EVTINJ_VALID | SVM_EVTINJ_TYPE_NMI;
 vcpu->arch.hflags |= HF_NMI_MASK;
 svm->vmcb->control.intercept |= (1UL << INTERCEPT_IRET);
 mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
 ++vcpu->stat.nmi_injections;
}
