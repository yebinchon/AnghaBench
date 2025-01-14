
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int cr2; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_2__ vcpu; TYPE_4__* vmcb; } ;
struct TYPE_7__ {unsigned int exit_code; int exit_info_2; int exit_info_1; scalar_t__ exit_code_hi; } ;
struct TYPE_8__ {TYPE_3__ control; } ;


 unsigned int SVM_EXIT_EXCP_BASE ;
 int is_nested (struct vcpu_svm*) ;
 int nested_svm_exit_handled (struct vcpu_svm*) ;

__attribute__((used)) static int nested_svm_check_exception(struct vcpu_svm *svm, unsigned nr,
          bool has_error_code, u32 error_code)
{
 if (!is_nested(svm))
  return 0;

 svm->vmcb->control.exit_code = SVM_EXIT_EXCP_BASE + nr;
 svm->vmcb->control.exit_code_hi = 0;
 svm->vmcb->control.exit_info_1 = error_code;
 svm->vmcb->control.exit_info_2 = svm->vcpu.arch.cr2;

 return nested_svm_exit_handled(svm);
}
