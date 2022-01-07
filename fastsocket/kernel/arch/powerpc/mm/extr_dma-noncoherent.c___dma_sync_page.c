
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __dma_sync (void*,size_t,int) ;
 int __dma_sync_page_highmem (struct page*,unsigned long,size_t,int) ;
 scalar_t__ page_address (struct page*) ;

void __dma_sync_page(struct page *page, unsigned long offset,
 size_t size, int direction)
{



 unsigned long start = (unsigned long)page_address(page) + offset;
 __dma_sync((void *)start, size, direction);

}
