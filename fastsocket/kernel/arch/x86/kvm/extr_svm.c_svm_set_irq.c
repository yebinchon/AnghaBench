
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vcpu_svm {TYPE_3__* vmcb; } ;
struct TYPE_9__ {int nr; } ;
struct TYPE_10__ {TYPE_4__ interrupt; } ;
struct TYPE_6__ {int irq_injections; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_1__ stat; } ;
struct TYPE_7__ {int event_inj; } ;
struct TYPE_8__ {TYPE_2__ control; } ;


 int BUG_ON (int) ;
 int SVM_EVTINJ_TYPE_INTR ;
 int SVM_EVTINJ_VALID ;
 int gif_set (struct vcpu_svm*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int trace_kvm_inj_virq (int) ;

__attribute__((used)) static void svm_set_irq(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 BUG_ON(!(gif_set(svm)));

 trace_kvm_inj_virq(vcpu->arch.interrupt.nr);
 ++vcpu->stat.irq_injections;

 svm->vmcb->control.event_inj = vcpu->arch.interrupt.nr |
  SVM_EVTINJ_VALID | SVM_EVTINJ_TYPE_INTR;
}
