
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DMA_UNCACHED_REGION ;
 int PAGE_SHIFT ;
 scalar_t__ _ramend ;
 int dma_alloc_init (scalar_t__,scalar_t__) ;
 int dma_base ;
 scalar_t__ dma_initialized ;
 int* dma_page ;
 int dma_page_lock ;
 int dma_pages ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned long __alloc_dma_pages(unsigned int pages)
{
 unsigned long ret = 0, flags;
 int i, count = 0;

 if (dma_initialized == 0)
  dma_alloc_init(_ramend - DMA_UNCACHED_REGION, _ramend);

 spin_lock_irqsave(&dma_page_lock, flags);

 for (i = 0; i < dma_pages;) {
  if (dma_page[i++] == 0) {
   if (++count == pages) {
    while (count--)
     dma_page[--i] = 1;
    ret = dma_base + (i << PAGE_SHIFT);
    break;
   }
  } else
   count = 0;
 }
 spin_unlock_irqrestore(&dma_page_lock, flags);
 return ret;
}
