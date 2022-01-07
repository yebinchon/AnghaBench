
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_rmap_desc {int dummy; } ;
struct kvm_pte_chain {int dummy; } ;
struct kvm_mmu_page {int dummy; } ;


 int ENOMEM ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int kvm_total_used_mmu_pages ;
 int mmu_destroy_caches () ;
 void* mmu_page_header_cache ;
 int mmu_shrinker ;
 scalar_t__ percpu_counter_init (int *,int ) ;
 void* pte_chain_cache ;
 int register_shrinker (int *) ;
 void* rmap_desc_cache ;

int kvm_mmu_module_init(void)
{
 pte_chain_cache = kmem_cache_create("kvm_pte_chain",
         sizeof(struct kvm_pte_chain),
         0, 0, ((void*)0));
 if (!pte_chain_cache)
  goto nomem;
 rmap_desc_cache = kmem_cache_create("kvm_rmap_desc",
         sizeof(struct kvm_rmap_desc),
         0, 0, ((void*)0));
 if (!rmap_desc_cache)
  goto nomem;

 mmu_page_header_cache = kmem_cache_create("kvm_mmu_page_header",
        sizeof(struct kvm_mmu_page),
        0, 0, ((void*)0));
 if (!mmu_page_header_cache)
  goto nomem;

 if (percpu_counter_init(&kvm_total_used_mmu_pages, 0))
  goto nomem;

 register_shrinker(&mmu_shrinker);

 return 0;

nomem:
 mmu_destroy_caches();
 return -ENOMEM;
}
