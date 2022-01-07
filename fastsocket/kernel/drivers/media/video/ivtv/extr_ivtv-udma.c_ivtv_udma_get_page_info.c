
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_dma_page_info {unsigned long uaddr; unsigned long offset; int tail; unsigned long first; unsigned long last; unsigned long page_count; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;

void ivtv_udma_get_page_info(struct ivtv_dma_page_info *dma_page, unsigned long first, unsigned long size)
{
 dma_page->uaddr = first & PAGE_MASK;
 dma_page->offset = first & ~PAGE_MASK;
 dma_page->tail = 1 + ((first+size-1) & ~PAGE_MASK);
 dma_page->first = (first & PAGE_MASK) >> PAGE_SHIFT;
 dma_page->last = ((first+size-1) & PAGE_MASK) >> PAGE_SHIFT;
 dma_page->page_count = dma_page->last - dma_page->first + 1;
 if (dma_page->page_count == 1) dma_page->tail -= dma_page->offset;
}
