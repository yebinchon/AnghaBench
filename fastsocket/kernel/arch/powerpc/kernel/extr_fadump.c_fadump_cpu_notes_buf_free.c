
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageReserved (struct page*) ;
 int __free_pages (struct page*,unsigned long) ;
 unsigned long get_order (unsigned long) ;
 struct page* virt_to_page (unsigned long) ;

__attribute__((used)) static void fadump_cpu_notes_buf_free(unsigned long vaddr, unsigned long size)
{
 struct page *page;
 unsigned long order, count, i;

 order = get_order(size);
 count = 1 << order;
 page = virt_to_page(vaddr);
 for (i = 0; i < count; i++)
  ClearPageReserved(page + i);
 __free_pages(page, order);
}
