
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; scalar_t__ next_rip; } ;


 int kvm_emulate_halt (int *) ;
 scalar_t__ kvm_rip_read (int *) ;
 int skip_emulated_instruction (int *) ;

__attribute__((used)) static int halt_interception(struct vcpu_svm *svm)
{
 svm->next_rip = kvm_rip_read(&svm->vcpu) + 1;
 skip_emulated_instruction(&svm->vcpu);
 return kvm_emulate_halt(&svm->vcpu);
}
