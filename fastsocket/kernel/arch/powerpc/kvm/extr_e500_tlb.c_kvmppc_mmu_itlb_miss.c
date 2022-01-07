
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msr; int pc; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MSR_IS ;
 int kvmppc_e500_deliver_tlb_miss (struct kvm_vcpu*,int ,unsigned int) ;

void kvmppc_mmu_itlb_miss(struct kvm_vcpu *vcpu)
{
 unsigned int as = !!(vcpu->arch.msr & MSR_IS);

 kvmppc_e500_deliver_tlb_miss(vcpu, vcpu->arch.pc, as);
}
