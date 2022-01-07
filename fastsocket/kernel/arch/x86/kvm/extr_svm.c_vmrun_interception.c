
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; int vcpu; scalar_t__ next_rip; } ;
struct TYPE_3__ {scalar_t__ exit_info_2; scalar_t__ exit_info_1; scalar_t__ exit_code_hi; int exit_code; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int SVM_EXIT_ERR ;
 scalar_t__ kvm_rip_read (int *) ;
 scalar_t__ nested_svm_check_permissions (struct vcpu_svm*) ;
 int nested_svm_vmexit (struct vcpu_svm*) ;
 int nested_svm_vmrun (struct vcpu_svm*) ;
 int nested_svm_vmrun_msrpm (struct vcpu_svm*) ;
 int nsvm_printk (char*) ;
 int skip_emulated_instruction (int *) ;

__attribute__((used)) static int vmrun_interception(struct vcpu_svm *svm)
{
 nsvm_printk("VMrun\n");

 if (nested_svm_check_permissions(svm))
  return 1;

 svm->next_rip = kvm_rip_read(&svm->vcpu) + 3;
 skip_emulated_instruction(&svm->vcpu);

 if (!nested_svm_vmrun(svm))
  return 1;

 if (!nested_svm_vmrun_msrpm(svm))
  goto failed;

 return 1;

failed:

 svm->vmcb->control.exit_code = SVM_EXIT_ERR;
 svm->vmcb->control.exit_code_hi = 0;
 svm->vmcb->control.exit_info_1 = 0;
 svm->vmcb->control.exit_info_2 = 0;

 nested_svm_vmexit(svm);

 return 1;
}
