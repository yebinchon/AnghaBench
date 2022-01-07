
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int direction; scalar_t__ sglen; scalar_t__ nr_pages; int * sglist; } ;
struct videobuf_buffer {size_t bsize; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int SetPageReserved (int ) ;
 struct page* alloc_pages (int,unsigned int) ;
 unsigned int get_order (size_t) ;
 int * kcalloc (int,int,int) ;
 int memset (int ,int ,size_t) ;
 int omap24xxcam_vbq_free_mmap_buffer (struct videobuf_buffer*) ;
 int page_address (struct page*) ;
 int sg_set_page (int *,struct page*,unsigned int,int ) ;
 struct videobuf_dmabuf* videobuf_to_dma (struct videobuf_buffer*) ;

__attribute__((used)) static int omap24xxcam_vbq_alloc_mmap_buffer(struct videobuf_buffer *vb)
{
 unsigned int order;
 size_t alloc_size, size = vb->bsize;
 struct page *page;
 int max_pages, err = 0, i = 0;
 struct videobuf_dmabuf *dma = videobuf_to_dma(vb);





 max_pages = vb->bsize >> PAGE_SHIFT;
 dma->sglist = kcalloc(max_pages, sizeof(*dma->sglist), GFP_KERNEL);
 if (dma->sglist == ((void*)0)) {
  err = -ENOMEM;
  goto out;
 }

 while (size) {
  order = get_order(size);




  if ((PAGE_SIZE << order) > size)
   order--;


  page = alloc_pages(GFP_KERNEL | GFP_DMA, order);

  while (page == ((void*)0)) {
   order--;
   page = alloc_pages(GFP_KERNEL | GFP_DMA, order);
   if (page == ((void*)0) && !order) {
    err = -ENOMEM;
    goto out;
   }
  }
  size -= (PAGE_SIZE << order);


  sg_set_page(&dma->sglist[i], page, PAGE_SIZE << order, 0);
  dma->sglen++;
  i++;

  alloc_size = (PAGE_SIZE << order);


  memset(page_address(page), 0, alloc_size);


  do {
   SetPageReserved(page++);
  } while (alloc_size -= PAGE_SIZE);
 }




 dma->nr_pages = dma->sglen;
 dma->direction = PCI_DMA_FROMDEVICE;

 return 0;

out:
 omap24xxcam_vbq_free_mmap_buffer(vb);
 return err;
}
