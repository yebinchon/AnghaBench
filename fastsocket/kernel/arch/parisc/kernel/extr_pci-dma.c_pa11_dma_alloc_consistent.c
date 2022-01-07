
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int* coherent_dma_mask; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 int GFP_DMA ;
 int PAGE_SHIFT ;
 unsigned long __get_free_pages (int ,int) ;
 unsigned long __pa (unsigned long) ;
 int flush_kernel_dcache_range (unsigned long,size_t) ;
 int get_order (size_t) ;
 int gfp ;
 int map_uncached_pages (unsigned long,size_t,unsigned long) ;
 unsigned long pcxl_alloc_range (size_t) ;

__attribute__((used)) static void * pa11_dma_alloc_consistent (struct device *dev, size_t size, dma_addr_t *dma_handle, gfp_t flag)
{
 unsigned long vaddr;
 unsigned long paddr;
 int order;

 order = get_order(size);
 size = 1 << (order + PAGE_SHIFT);
 vaddr = pcxl_alloc_range(size);
 paddr = __get_free_pages(flag, order);
 flush_kernel_dcache_range(paddr, size);
 paddr = __pa(paddr);
 map_uncached_pages(vaddr, size, paddr);
 *dma_handle = (dma_addr_t) paddr;
 return (void *)vaddr;
}
