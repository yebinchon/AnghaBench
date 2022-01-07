
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct TYPE_3__ {unsigned long long intercept; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 unsigned long long INTERCEPT_VINTR ;
 int VMCB_INTERCEPTS ;
 int mark_dirty (TYPE_2__*,int ) ;

__attribute__((used)) static void svm_set_vintr(struct vcpu_svm *svm)
{
 svm->vmcb->control.intercept |= 1ULL << INTERCEPT_VINTR;
 mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
}
