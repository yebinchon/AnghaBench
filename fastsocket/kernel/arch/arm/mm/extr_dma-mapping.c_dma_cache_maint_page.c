
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 size_t PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 int dma_cache_maint_contiguous (struct page*,unsigned long,size_t,int) ;

void dma_cache_maint_page(struct page *page, unsigned long offset,
     size_t size, int dir)
{






 size_t left = size;
 do {
  size_t len = left;
  if (PageHighMem(page) && len + offset > PAGE_SIZE) {
   if (offset >= PAGE_SIZE) {
    page += offset / PAGE_SIZE;
    offset %= PAGE_SIZE;
   }
   len = PAGE_SIZE - offset;
  }
  dma_cache_maint_contiguous(page, offset, len, dir);
  offset = 0;
  page++;
  left -= len;
 } while (left);
}
