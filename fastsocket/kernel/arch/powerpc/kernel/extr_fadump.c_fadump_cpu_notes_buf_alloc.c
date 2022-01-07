
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 int SetPageReserved (struct page*) ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,unsigned long) ;
 unsigned long get_order (unsigned long) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void *fadump_cpu_notes_buf_alloc(unsigned long size)
{
 void *vaddr;
 struct page *page;
 unsigned long order, count, i;

 order = get_order(size);
 vaddr = (void *)__get_free_pages(GFP_KERNEL|__GFP_ZERO, order);
 if (!vaddr)
  return ((void*)0);

 count = 1 << order;
 page = virt_to_page(vaddr);
 for (i = 0; i < count; i++)
  SetPageReserved(page + i);
 return vaddr;
}
