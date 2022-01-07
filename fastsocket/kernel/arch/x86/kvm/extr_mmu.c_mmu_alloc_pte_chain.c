
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmu_pte_chain_cache; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pte_chain {int dummy; } ;


 struct kvm_pte_chain* mmu_memory_cache_alloc (int *,int) ;

__attribute__((used)) static struct kvm_pte_chain *mmu_alloc_pte_chain(struct kvm_vcpu *vcpu)
{
 return mmu_memory_cache_alloc(&vcpu->arch.mmu_pte_chain_cache,
          sizeof(struct kvm_pte_chain));
}
