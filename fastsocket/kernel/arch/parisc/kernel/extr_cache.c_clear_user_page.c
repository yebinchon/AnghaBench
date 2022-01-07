
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int clear_user_page_asm (void*,unsigned long) ;
 int pdtlb_kernel (void*) ;
 int purge_kernel_dcache_page (unsigned long) ;
 int purge_tlb_end (unsigned long) ;
 int purge_tlb_start (unsigned long) ;

void clear_user_page(void *page, unsigned long vaddr, struct page *pg)
{
 unsigned long flags;

 purge_kernel_dcache_page((unsigned long)page);
 purge_tlb_start(flags);
 pdtlb_kernel(page);
 purge_tlb_end(flags);
 clear_user_page_asm(page, vaddr);
}
