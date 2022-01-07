
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gva_t ;


 int MSR_DS ;
 int get_cur_pid (struct kvm_vcpu*) ;
 int kvmppc_e500_tlb_search (struct kvm_vcpu*,int ,int ,unsigned int) ;

int kvmppc_mmu_dtlb_index(struct kvm_vcpu *vcpu, gva_t eaddr)
{
 unsigned int as = !!(vcpu->arch.msr & MSR_DS);

 return kvmppc_e500_tlb_search(vcpu, eaddr, get_cur_pid(vcpu), as);
}
