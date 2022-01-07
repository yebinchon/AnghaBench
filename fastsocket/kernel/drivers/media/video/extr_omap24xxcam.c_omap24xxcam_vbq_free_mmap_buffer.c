
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int sglen; int * sglist; } ;
struct videobuf_buffer {int dummy; } ;
struct page {int dummy; } ;


 int ClearPageReserved (int ) ;
 size_t PAGE_SIZE ;
 int __free_pages (struct page*,int ) ;
 int get_order (size_t) ;
 int kfree (int *) ;
 size_t sg_dma_len (int *) ;
 struct page* sg_page (int *) ;
 struct videobuf_dmabuf* videobuf_to_dma (struct videobuf_buffer*) ;

__attribute__((used)) static void omap24xxcam_vbq_free_mmap_buffer(struct videobuf_buffer *vb)
{
 struct videobuf_dmabuf *dma = videobuf_to_dma(vb);
 size_t alloc_size;
 struct page *page;
 int i;

 if (dma->sglist == ((void*)0))
  return;

 i = dma->sglen;
 while (i) {
  i--;
  alloc_size = sg_dma_len(&dma->sglist[i]);
  page = sg_page(&dma->sglist[i]);
  do {
   ClearPageReserved(page++);
  } while (alloc_size -= PAGE_SIZE);
  __free_pages(sg_page(&dma->sglist[i]),
        get_order(sg_dma_len(&dma->sglist[i])));
 }

 kfree(dma->sglist);
 dma->sglist = ((void*)0);
}
