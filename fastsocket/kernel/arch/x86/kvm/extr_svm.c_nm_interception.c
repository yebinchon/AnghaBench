
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int fpu_active; } ;
struct vcpu_svm {TYPE_3__* vmcb; TYPE_4__ vcpu; } ;
struct TYPE_6__ {int cr0; } ;
struct TYPE_5__ {int intercept_exceptions; } ;
struct TYPE_7__ {TYPE_2__ save; TYPE_1__ control; } ;


 int NM_VECTOR ;
 int VMCB_CR ;
 int VMCB_INTERCEPTS ;
 int X86_CR0_TS ;
 int kvm_read_cr0_bits (TYPE_4__*,int ) ;
 int mark_dirty (TYPE_3__*,int ) ;

__attribute__((used)) static int nm_interception(struct vcpu_svm *svm)
{
 svm->vmcb->control.intercept_exceptions &= ~(1 << NM_VECTOR);
 if (!kvm_read_cr0_bits(&svm->vcpu, X86_CR0_TS))
  svm->vmcb->save.cr0 &= ~X86_CR0_TS;
 else
  svm->vmcb->save.cr0 |= X86_CR0_TS;
 svm->vcpu.fpu_active = 1;
 mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
 mark_dirty(svm->vmcb, VMCB_CR);

 return 1;
}
