
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int mn10300_dcache_flush_page (int ) ;
 int mn10300_icache_inv () ;
 int page_to_phys (struct page*) ;

void flush_icache_page(struct vm_area_struct *vma, struct page *page)
{
 mn10300_dcache_flush_page(page_to_phys(page));
 mn10300_icache_inv();
}
