
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int kvm_vcpu_on_spin (int *) ;

__attribute__((used)) static int pause_interception(struct vcpu_svm *svm)
{
 kvm_vcpu_on_spin(&(svm->vcpu));
 return 1;
}
