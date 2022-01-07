
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmu_page_header_cache; int mmu_page_cache; int mmu_rmap_desc_cache; int mmu_pte_chain_cache; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int mmu_page_header_cache ;
 int mmu_topup_memory_cache (int *,int ,int) ;
 int mmu_topup_memory_cache_page (int *,int) ;
 int pte_chain_cache ;
 int rmap_desc_cache ;

__attribute__((used)) static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
{
 int r;

 r = mmu_topup_memory_cache(&vcpu->arch.mmu_pte_chain_cache,
       pte_chain_cache, 4);
 if (r)
  goto out;
 r = mmu_topup_memory_cache(&vcpu->arch.mmu_rmap_desc_cache,
       rmap_desc_cache, 4);
 if (r)
  goto out;
 r = mmu_topup_memory_cache_page(&vcpu->arch.mmu_page_cache, 8);
 if (r)
  goto out;
 r = mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
       mmu_page_header_cache, 4);
out:
 return r;
}
