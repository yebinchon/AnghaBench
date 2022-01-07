
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; int vcpu; scalar_t__ next_rip; } ;
struct TYPE_3__ {int int_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int VMCB_INTR ;
 int V_IRQ_MASK ;
 int disable_gif (struct vcpu_svm*) ;
 scalar_t__ kvm_rip_read (int *) ;
 int mark_dirty (TYPE_2__*,int ) ;
 scalar_t__ nested_svm_check_permissions (struct vcpu_svm*) ;
 int skip_emulated_instruction (int *) ;
 int svm_clear_vintr (struct vcpu_svm*) ;

__attribute__((used)) static int clgi_interception(struct vcpu_svm *svm)
{
 if (nested_svm_check_permissions(svm))
  return 1;

 svm->next_rip = kvm_rip_read(&svm->vcpu) + 3;
 skip_emulated_instruction(&svm->vcpu);

 disable_gif(svm);


 svm_clear_vintr(svm);
 svm->vmcb->control.int_ctl &= ~V_IRQ_MASK;
 mark_dirty(svm->vmcb, VMCB_INTR);

 return 1;
}
