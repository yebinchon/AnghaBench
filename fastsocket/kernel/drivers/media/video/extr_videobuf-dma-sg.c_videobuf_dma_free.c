
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int nr_pages; int direction; scalar_t__ bus_addr; int * vaddr; int * pages; int sglen; int magic; } ;


 int BUG_ON (int ) ;
 int DMA_NONE ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_DMABUF ;
 int kfree (int *) ;
 int page_cache_release (int ) ;
 int vfree (int *) ;

int videobuf_dma_free(struct videobuf_dmabuf *dma)
{
 int i;
 MAGIC_CHECK(dma->magic, MAGIC_DMABUF);
 BUG_ON(dma->sglen);

 if (dma->pages) {
  for (i = 0; i < dma->nr_pages; i++)
   page_cache_release(dma->pages[i]);
  kfree(dma->pages);
  dma->pages = ((void*)0);
 }

 vfree(dma->vaddr);
 dma->vaddr = ((void*)0);

 if (dma->bus_addr)
  dma->bus_addr = 0;
 dma->direction = DMA_NONE;

 return 0;
}
