
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 unsigned int CACHE_COLOUR (unsigned long) ;
 int PAGE_KERNEL ;
 unsigned int PAGE_SHIFT ;
 int PG_dcache_dirty ;
 scalar_t__ TOP_PTE (unsigned long) ;
 int __flush_dcache_page (int ,struct page*) ;
 int copy_page (void*,void*) ;
 int discard_old_kernel_data (int ) ;
 int flush_tlb_kernel_page (unsigned long) ;
 unsigned long from_address ;
 int page_address (struct page*) ;
 int page_mapping (struct page*) ;
 int page_to_pfn (struct page*) ;
 int pfn_pte (int ,int ) ;
 int set_pte_ext (scalar_t__,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 unsigned long to_address ;
 int v6_lock ;

__attribute__((used)) static void v6_copy_user_highpage_aliasing(struct page *to,
 struct page *from, unsigned long vaddr)
{
 unsigned int offset = CACHE_COLOUR(vaddr);
 unsigned long kfrom, kto;

 if (test_and_clear_bit(PG_dcache_dirty, &from->flags))
  __flush_dcache_page(page_mapping(from), from);


 discard_old_kernel_data(page_address(to));





 spin_lock(&v6_lock);

 set_pte_ext(TOP_PTE(from_address) + offset, pfn_pte(page_to_pfn(from), PAGE_KERNEL), 0);
 set_pte_ext(TOP_PTE(to_address) + offset, pfn_pte(page_to_pfn(to), PAGE_KERNEL), 0);

 kfrom = from_address + (offset << PAGE_SHIFT);
 kto = to_address + (offset << PAGE_SHIFT);

 flush_tlb_kernel_page(kfrom);
 flush_tlb_kernel_page(kto);

 copy_page((void *)kto, (void *)kfrom);

 spin_unlock(&v6_lock);
}
