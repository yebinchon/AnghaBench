
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmu_page_header_cache; int mmu_page_cache; int mmu_rmap_desc_cache; int mmu_pte_chain_cache; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int mmu_free_memory_cache (int *) ;
 int mmu_free_memory_cache_page (int *) ;

__attribute__((used)) static void mmu_free_memory_caches(struct kvm_vcpu *vcpu)
{
 mmu_free_memory_cache(&vcpu->arch.mmu_pte_chain_cache);
 mmu_free_memory_cache(&vcpu->arch.mmu_rmap_desc_cache);
 mmu_free_memory_cache_page(&vcpu->arch.mmu_page_cache);
 mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
}
