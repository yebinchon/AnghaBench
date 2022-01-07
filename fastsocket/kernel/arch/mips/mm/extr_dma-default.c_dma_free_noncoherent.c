
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 int plat_unmap_dma_mem (struct device*,int ,size_t,int ) ;

void dma_free_noncoherent(struct device *dev, size_t size, void *vaddr,
 dma_addr_t dma_handle)
{
 plat_unmap_dma_mem(dev, dma_handle, size, DMA_BIDIRECTIONAL);
 free_pages((unsigned long) vaddr, get_order(size));
}
