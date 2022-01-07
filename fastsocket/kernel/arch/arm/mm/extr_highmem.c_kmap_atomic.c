
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
 int * TOP_PTE (unsigned long) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int debug_kmap_atomic (int) ;
 void* kmap_high_get (struct page*) ;
 int kmap_prot ;
 int local_flush_tlb_kernel_page (unsigned long) ;
 int mk_pte (struct page*,int ) ;
 void* page_address (struct page*) ;
 int pagefault_disable () ;
 int pte_none (int ) ;
 int set_pte_ext (int *,int ,int ) ;
 int smp_processor_id () ;

void *kmap_atomic(struct page *page, enum km_type type)
{
 unsigned int idx;
 unsigned long vaddr;
 void *kmap;

 pagefault_disable();
 if (!PageHighMem(page))
  return page_address(page);

 debug_kmap_atomic(type);

 kmap = kmap_high_get(page);
 if (kmap)
  return kmap;

 idx = type + KM_TYPE_NR * smp_processor_id();
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);







 set_pte_ext(TOP_PTE(vaddr), mk_pte(page, kmap_prot), 0);





 local_flush_tlb_kernel_page(vaddr);

 return (void *)vaddr;
}
