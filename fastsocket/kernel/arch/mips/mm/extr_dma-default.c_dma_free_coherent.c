
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 unsigned long CAC_ADDR (unsigned long) ;
 int DMA_BIDIRECTIONAL ;
 scalar_t__ dma_release_from_coherent (struct device*,int,void*) ;
 int free_pages (unsigned long,int) ;
 int get_order (size_t) ;
 int plat_device_is_coherent (struct device*) ;
 int plat_unmap_dma_mem (struct device*,int ,size_t,int ) ;

void dma_free_coherent(struct device *dev, size_t size, void *vaddr,
 dma_addr_t dma_handle)
{
 unsigned long addr = (unsigned long) vaddr;
 int order = get_order(size);

 if (dma_release_from_coherent(dev, order, vaddr))
  return;

 plat_unmap_dma_mem(dev, dma_handle, size, DMA_BIDIRECTIONAL);

 if (!plat_device_is_coherent(dev))
  addr = CAC_ADDR(addr);

 free_pages(addr, get_order(size));
}
