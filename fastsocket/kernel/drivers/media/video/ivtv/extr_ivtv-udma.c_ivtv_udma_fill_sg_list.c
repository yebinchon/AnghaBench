
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_user_dma {int ** map; int * SGlist; int ** bouncemap; } ;
struct ivtv_dma_page_info {int offset; int page_count; int tail; } ;


 int GFP_KERNEL ;
 int KM_BOUNCE_READ ;
 int PAGE_SIZE ;
 scalar_t__ PageHighMem (int *) ;
 int * alloc_page (int ) ;
 void* kmap_atomic (int *,int ) ;
 int kunmap_atomic (void*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcpy (scalar_t__,void*,unsigned int) ;
 scalar_t__ page_address (int *) ;
 int sg_set_page (int *,int *,unsigned int,int) ;

int ivtv_udma_fill_sg_list (struct ivtv_user_dma *dma, struct ivtv_dma_page_info *dma_page, int map_offset)
{
 int i, offset;
 unsigned long flags;

 if (map_offset < 0)
  return map_offset;

 offset = dma_page->offset;


 for (i = 0; i < dma_page->page_count; i++) {
  unsigned int len = (i == dma_page->page_count - 1) ?
   dma_page->tail : PAGE_SIZE - offset;

  if (PageHighMem(dma->map[map_offset])) {
   void *src;

   if (dma->bouncemap[map_offset] == ((void*)0))
    dma->bouncemap[map_offset] = alloc_page(GFP_KERNEL);
   if (dma->bouncemap[map_offset] == ((void*)0))
    return -1;
   local_irq_save(flags);
   src = kmap_atomic(dma->map[map_offset], KM_BOUNCE_READ) + offset;
   memcpy(page_address(dma->bouncemap[map_offset]) + offset, src, len);
   kunmap_atomic(src, KM_BOUNCE_READ);
   local_irq_restore(flags);
   sg_set_page(&dma->SGlist[map_offset], dma->bouncemap[map_offset], len, offset);
  }
  else {
   sg_set_page(&dma->SGlist[map_offset], dma->map[map_offset], len, offset);
  }
  offset = 0;
  map_offset++;
 }
 return map_offset;
}
