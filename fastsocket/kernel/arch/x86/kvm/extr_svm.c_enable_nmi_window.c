
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hflags; } ;
struct TYPE_7__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_5__* vmcb; TYPE_2__ vcpu; } ;
struct TYPE_8__ {int singlestep; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_9__ {int rflags; } ;
struct TYPE_10__ {TYPE_4__ save; } ;


 int HF_IRET_MASK ;
 int HF_NMI_MASK ;
 int X86_EFLAGS_RF ;
 int X86_EFLAGS_TF ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int update_db_intercept (struct kvm_vcpu*) ;

__attribute__((used)) static void enable_nmi_window(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if ((svm->vcpu.arch.hflags & (HF_NMI_MASK | HF_IRET_MASK))
     == HF_NMI_MASK)
  return;




 vcpu->arch.singlestep = 1;
 svm->vmcb->save.rflags |= (X86_EFLAGS_TF | X86_EFLAGS_RF);
 update_db_intercept(vcpu);
}
