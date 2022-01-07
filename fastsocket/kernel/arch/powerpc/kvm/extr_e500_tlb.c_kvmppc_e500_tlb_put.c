
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int _tlbil_all () ;

void kvmppc_e500_tlb_put(struct kvm_vcpu *vcpu)
{
 _tlbil_all();
}
