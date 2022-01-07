
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvmppc_e500_tlb_put (struct kvm_vcpu*) ;

void kvmppc_core_vcpu_put(struct kvm_vcpu *vcpu)
{
 kvmppc_e500_tlb_put(vcpu);
}
