
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; scalar_t__ next_rip; } ;


 int enable_gif (struct vcpu_svm*) ;
 scalar_t__ kvm_rip_read (int *) ;
 scalar_t__ nested_svm_check_permissions (struct vcpu_svm*) ;
 int skip_emulated_instruction (int *) ;

__attribute__((used)) static int stgi_interception(struct vcpu_svm *svm)
{
 if (nested_svm_check_permissions(svm))
  return 1;

 svm->next_rip = kvm_rip_read(&svm->vcpu) + 3;
 skip_emulated_instruction(&svm->vcpu);

 enable_gif(svm);

 return 1;
}
