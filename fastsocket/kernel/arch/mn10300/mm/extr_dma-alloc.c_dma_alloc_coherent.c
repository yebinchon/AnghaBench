
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int coherent_dma_mask; } ;
typedef int dma_addr_t ;


 int GFP_DMA ;
 int PAGE_SIZE ;
 int __GFP_DMA ;
 int __GFP_HIGHMEM ;
 unsigned long __get_free_pages (int,int ) ;
 int get_order (size_t) ;
 int memset (void*,int,size_t) ;
 int mn10300_dcache_flush_inv_range2 (int ,int ) ;
 int virt_to_bus (void*) ;
 int virt_to_phys (void*) ;

void *dma_alloc_coherent(struct device *dev, size_t size,
    dma_addr_t *dma_handle, int gfp)
{
 unsigned long addr;
 void *ret;


 gfp &= ~(__GFP_DMA | __GFP_HIGHMEM);

 if (dev == ((void*)0) || dev->coherent_dma_mask < 0xffffffff)
  gfp |= GFP_DMA;

 addr = __get_free_pages(gfp, get_order(size));
 if (!addr)
  return ((void*)0);


 ret = (void *) (addr | 0x20000000);


 memset((void *) addr, 0xfb, size);


 mn10300_dcache_flush_inv_range2(virt_to_phys((void *) addr), PAGE_SIZE);

 *dma_handle = virt_to_bus((void *) addr);
 return ret;
}
