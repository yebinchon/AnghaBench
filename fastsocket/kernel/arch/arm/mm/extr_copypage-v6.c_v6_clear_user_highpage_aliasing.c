
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned int CACHE_COLOUR (unsigned long) ;
 int PAGE_KERNEL ;
 unsigned int PAGE_SHIFT ;
 scalar_t__ TOP_PTE (unsigned int) ;
 int clear_page (void*) ;
 int discard_old_kernel_data (int ) ;
 int flush_tlb_kernel_page (unsigned long) ;
 int page_address (struct page*) ;
 int page_to_pfn (struct page*) ;
 int pfn_pte (int ,int ) ;
 int set_pte_ext (scalar_t__,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned int to_address ;
 int v6_lock ;

__attribute__((used)) static void v6_clear_user_highpage_aliasing(struct page *page, unsigned long vaddr)
{
 unsigned int offset = CACHE_COLOUR(vaddr);
 unsigned long to = to_address + (offset << PAGE_SHIFT);


 discard_old_kernel_data(page_address(page));





 spin_lock(&v6_lock);

 set_pte_ext(TOP_PTE(to_address) + offset, pfn_pte(page_to_pfn(page), PAGE_KERNEL), 0);
 flush_tlb_kernel_page(to);
 clear_page((void *)to);

 spin_unlock(&v6_lock);
}
