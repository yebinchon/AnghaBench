
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int current_memory_agp; } ;


 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int __free_pages (struct page*,int) ;
 TYPE_1__* agp_bridge ;
 struct page* alloc_pages (int,int) ;
 int atomic_inc (int *) ;
 int get_page (struct page*) ;
 scalar_t__ set_pages_uc (struct page*,int) ;
 int set_pages_wb (struct page*,int) ;

__attribute__((used)) static struct page *i8xx_alloc_pages(void)
{
 struct page *page;

 page = alloc_pages(GFP_KERNEL | GFP_DMA32, 2);
 if (page == ((void*)0))
  return ((void*)0);

 if (set_pages_uc(page, 4) < 0) {
  set_pages_wb(page, 4);
  __free_pages(page, 2);
  return ((void*)0);
 }
 get_page(page);
 atomic_inc(&agp_bridge->current_memory_agp);
 return page;
}
