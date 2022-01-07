
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; scalar_t__ next_rip; } ;


 int kvm_emulate_cpuid (int *) ;
 scalar_t__ kvm_rip_read (int *) ;

__attribute__((used)) static int cpuid_interception(struct vcpu_svm *svm)
{
 svm->next_rip = kvm_rip_read(&svm->vcpu) + 2;
 kvm_emulate_cpuid(&svm->vcpu);
 return 1;
}
