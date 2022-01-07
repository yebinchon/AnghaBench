
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcb {int dummy; } ;
struct vcpu_svm {TYPE_2__* vmcb; int vcpu; scalar_t__ next_rip; } ;
struct TYPE_3__ {int rax; } ;
struct TYPE_4__ {TYPE_1__ save; } ;


 int KM_USER0 ;
 scalar_t__ kvm_rip_read (int *) ;
 scalar_t__ nested_svm_check_permissions (struct vcpu_svm*) ;
 struct vmcb* nested_svm_map (struct vcpu_svm*,int ,int ) ;
 int nested_svm_unmap (struct vmcb*,int ) ;
 int nested_svm_vmloadsave (TYPE_2__*,struct vmcb*) ;
 int skip_emulated_instruction (int *) ;

__attribute__((used)) static int vmsave_interception(struct vcpu_svm *svm)
{
 struct vmcb *nested_vmcb;

 if (nested_svm_check_permissions(svm))
  return 1;

 svm->next_rip = kvm_rip_read(&svm->vcpu) + 3;
 skip_emulated_instruction(&svm->vcpu);

 nested_vmcb = nested_svm_map(svm, svm->vmcb->save.rax, KM_USER0);
 if (!nested_vmcb)
  return 1;

 nested_svm_vmloadsave(svm->vmcb, nested_vmcb);
 nested_svm_unmap(nested_vmcb, KM_USER0);

 return 1;
}
