
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm_mmu_memory_cache {int nobjs; int * objects; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct page* alloc_page (int ) ;
 int page_address (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static int mmu_topup_memory_cache_page(struct kvm_mmu_memory_cache *cache,
           int min)
{
 struct page *page;

 if (cache->nobjs >= min)
  return 0;
 while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
  page = alloc_page(GFP_KERNEL);
  if (!page)
   return -ENOMEM;
  set_page_private(page, 0);
  cache->objects[cache->nobjs++] = page_address(page);
 }
 return 0;
}
