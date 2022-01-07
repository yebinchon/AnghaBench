
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvmppc_e500_tlb_load (struct kvm_vcpu*,int) ;

void kvmppc_core_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{
 kvmppc_e500_tlb_load(vcpu, cpu);
}
