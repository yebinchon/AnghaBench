
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int current_memory_agp; } ;


 int __free_pages (struct page*,int) ;
 TYPE_1__* agp_bridge ;
 int atomic_dec (int *) ;
 int put_page (struct page*) ;
 int set_pages_wb (struct page*,int) ;

__attribute__((used)) static void i8xx_destroy_pages(struct page *page)
{
 if (page == ((void*)0))
  return;

 set_pages_wb(page, 4);
 put_page(page);
 __free_pages(page, 2);
 atomic_dec(&agp_bridge->current_memory_agp);
}
