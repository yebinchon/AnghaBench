
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int direction; int nr_pages; int * vaddr; } ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int dprintk (int,char*,unsigned long,...) ;
 int memset (int *,int ,int) ;
 int * vmalloc_32 (int) ;

int videobuf_dma_init_kernel(struct videobuf_dmabuf *dma, int direction,
        int nr_pages)
{
 dprintk(1, "init kernel [%d pages]\n", nr_pages);

 dma->direction = direction;
 dma->vaddr = vmalloc_32(nr_pages << PAGE_SHIFT);
 if (((void*)0) == dma->vaddr) {
  dprintk(1, "vmalloc_32(%d pages) failed\n", nr_pages);
  return -ENOMEM;
 }

 dprintk(1, "vmalloc is at addr 0x%08lx, size=%d\n",
    (unsigned long)dma->vaddr,
    nr_pages << PAGE_SHIFT);

 memset(dma->vaddr, 0, nr_pages << PAGE_SHIFT);
 dma->nr_pages = nr_pages;

 return 0;
}
