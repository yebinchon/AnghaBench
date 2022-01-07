
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; scalar_t__ next_rip; } ;


 int kvm_emulate_hypercall (int *) ;
 scalar_t__ kvm_rip_read (int *) ;
 int skip_emulated_instruction (int *) ;

__attribute__((used)) static int vmmcall_interception(struct vcpu_svm *svm)
{
 svm->next_rip = kvm_rip_read(&svm->vcpu) + 3;
 skip_emulated_instruction(&svm->vcpu);
 kvm_emulate_hypercall(&svm->vcpu);
 return 1;
}
