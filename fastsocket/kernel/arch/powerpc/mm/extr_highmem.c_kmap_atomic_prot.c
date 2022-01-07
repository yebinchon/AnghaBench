
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pgprot_t ;
typedef enum km_type { ____Placeholder_km_type } km_type ;


 int BUG_ON (int) ;
 scalar_t__ FIX_KMAP_BEGIN ;
 int KM_TYPE_NR ;
 int PageHighMem (struct page*) ;
 unsigned long __fix_to_virt (scalar_t__) ;
 int __set_pte_at (int *,unsigned long,int *,int ,int) ;
 int debug_kmap_atomic (int) ;
 int init_mm ;
 int * kmap_pte ;
 int local_flush_tlb_page (int *,unsigned long) ;
 int mk_pte (struct page*,int ) ;
 void* page_address (struct page*) ;
 int pagefault_disable () ;
 int pte_none (int ) ;
 int smp_processor_id () ;

void *kmap_atomic_prot(struct page *page, enum km_type type, pgprot_t prot)
{
 unsigned int idx;
 unsigned long vaddr;


 pagefault_disable();
 if (!PageHighMem(page))
  return page_address(page);

 debug_kmap_atomic(type);
 idx = type + KM_TYPE_NR*smp_processor_id();
 vaddr = __fix_to_virt(FIX_KMAP_BEGIN + idx);



 __set_pte_at(&init_mm, vaddr, kmap_pte-idx, mk_pte(page, prot), 1);
 local_flush_tlb_page(((void*)0), vaddr);

 return (void*) vaddr;
}
