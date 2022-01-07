
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {int vcpu; TYPE_2__* vmcb; } ;
struct TYPE_3__ {int exit_info_1; int exit_code; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int SVM_EXITINFO_REG_MASK ;
 int SVM_EXIT_READ_DR0 ;
 int SVM_FEATURE_DECODE_ASSIST ;
 int emulate_on_interception (struct vcpu_svm*) ;
 unsigned long kvm_register_read (int *,int) ;
 int kvm_register_write (int *,int,unsigned long) ;
 int skip_emulated_instruction (int *) ;
 unsigned long svm_get_dr (int *,int) ;
 int svm_has (int ) ;
 int svm_set_dr (int *,int,unsigned long,int*) ;

__attribute__((used)) static int dr_interception(struct vcpu_svm *svm)
{
 int reg, dr;
 unsigned long val;
 int err = 0;

 if (!svm_has(SVM_FEATURE_DECODE_ASSIST))
  return emulate_on_interception(svm);

 reg = svm->vmcb->control.exit_info_1 & SVM_EXITINFO_REG_MASK;
 dr = svm->vmcb->control.exit_code - SVM_EXIT_READ_DR0;

 if (dr >= 16) {
  val = kvm_register_read(&svm->vcpu, reg);
  svm_set_dr(&svm->vcpu, dr - 16, val, &err);
 } else {
  val = svm_get_dr(&svm->vcpu, dr);
  kvm_register_write(&svm->vcpu, reg, val);
 }
 skip_emulated_instruction(&svm->vcpu);

 return 1;
}
