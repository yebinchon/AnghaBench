
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum km_type { ____Placeholder_km_type } km_type ;


 int BUG_ON (int) ;
 scalar_t__ FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int PageHighMem (struct page*) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int __flush_cache_one (unsigned long) ;
 int __flush_tlb_one (unsigned long) ;
 int debug_kmap_atomic (int) ;
 int flush_cache_all () ;
 int flush_tlb_all () ;
 int kmap_prot ;
 int * kmap_pte ;
 int mk_pte (struct page*,int ) ;
 void* page_address (struct page*) ;
 int pagefault_disable () ;
 int pte_none (int ) ;
 int set_pte (int *,int ) ;
 int smp_processor_id () ;

void *kmap_atomic(struct page *page, enum km_type type)
{
 unsigned long idx;
 unsigned long vaddr;


 pagefault_disable();
 if (!PageHighMem(page))
  return page_address(page);

 debug_kmap_atomic(type);
 idx = type + KM_TYPE_NR*smp_processor_id();
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);





 flush_cache_all();





 set_pte(kmap_pte-idx, mk_pte(page, kmap_prot));




 flush_tlb_all();


 return (void*) vaddr;
}
