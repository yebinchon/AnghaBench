
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int direction; int nr_pages; scalar_t__ bus_addr; } ;
typedef scalar_t__ dma_addr_t ;


 int EINVAL ;
 int dprintk (int,char*,int,unsigned long) ;

int videobuf_dma_init_overlay(struct videobuf_dmabuf *dma, int direction,
         dma_addr_t addr, int nr_pages)
{
 dprintk(1, "init overlay [%d pages @ bus 0x%lx]\n",
  nr_pages, (unsigned long)addr);
 dma->direction = direction;

 if (0 == addr)
  return -EINVAL;

 dma->bus_addr = addr;
 dma->nr_pages = nr_pages;

 return 0;
}
