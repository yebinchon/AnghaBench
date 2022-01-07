
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {unsigned long long intercept; int exit_required; } ;
struct TYPE_6__ {int hflags; } ;
struct TYPE_7__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_5__ nested; TYPE_4__* vmcb; TYPE_2__ vcpu; } ;
struct TYPE_8__ {int exit_code; } ;
struct TYPE_9__ {TYPE_3__ control; } ;


 int HF_HIF_MASK ;
 int HF_VINTR_MASK ;
 int SVM_EXIT_INTR ;
 int is_nested (struct vcpu_svm*) ;
 int nsvm_printk (char*) ;

__attribute__((used)) static inline int nested_svm_intr(struct vcpu_svm *svm)
{
 if (!is_nested(svm))
  return 0;

 if (!(svm->vcpu.arch.hflags & HF_VINTR_MASK))
  return 0;

 if (!(svm->vcpu.arch.hflags & HF_HIF_MASK))
  return 0;

 svm->vmcb->control.exit_code = SVM_EXIT_INTR;

 if (svm->nested.intercept & 1ULL) {






  svm->nested.exit_required = 1;
  nsvm_printk("VMexit -> INTR\n");
  return 1;
 }

 return 0;
}
