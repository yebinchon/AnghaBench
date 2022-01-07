
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef struct page* pgtable_t ;


 int GFP_KERNEL ;
 int __GFP_HIGHMEM ;
 int __GFP_REPEAT ;
 struct page* alloc_pages (int,int ) ;
 int clear_highpage (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int pgtable_page_ctor (struct page*) ;

pgtable_t pte_alloc_one(struct mm_struct *mm, unsigned long address)
{
 struct page *page;




 page = alloc_pages(GFP_KERNEL|__GFP_REPEAT, 0);

 if (page) {
  clear_highpage(page);
  pgtable_page_ctor(page);
  flush_dcache_page(page);
 }
 return page;
}
