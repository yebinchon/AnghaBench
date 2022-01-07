
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr_data {int data; int host_initiated; int index; } ;
struct kvm_vcpu {int dummy; } ;


 int MSR_IA32_TSC ;
 int kvm_write_tsc (struct kvm_vcpu*,struct msr_data*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
{
 struct msr_data msr;

 vcpu_load(vcpu);
 msr.data = 0x0;
 msr.index = MSR_IA32_TSC;
 msr.host_initiated = 1;
 kvm_write_tsc(vcpu, &msr);
 vcpu_put(vcpu);

 return 0;
}
