
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msr; int pid; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gva_t ;


 int MSR_DS ;
 int kvmppc_44x_tlb_index (struct kvm_vcpu*,int ,int ,unsigned int) ;

int kvmppc_mmu_dtlb_index(struct kvm_vcpu *vcpu, gva_t eaddr)
{
 unsigned int as = !!(vcpu->arch.msr & MSR_DS);

 return kvmppc_44x_tlb_index(vcpu, eaddr, vcpu->arch.pid, as);
}
