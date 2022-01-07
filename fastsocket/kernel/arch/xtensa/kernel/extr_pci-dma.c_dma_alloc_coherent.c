
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int coherent_dma_mask; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int BUG () ;
 int GFP_DMA ;
 unsigned long XCHAL_KSEG_BYPASS_VADDR ;
 unsigned long XCHAL_KSEG_CACHED_VADDR ;
 unsigned long XCHAL_KSEG_SIZE ;
 int __GFP_DMA ;
 int __GFP_HIGHMEM ;
 int __flush_invalidate_dcache_range (unsigned long,size_t) ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (size_t) ;
 int memset (void*,int ,size_t) ;
 int virt_to_bus (void*) ;

void *
dma_alloc_coherent(struct device *dev,size_t size,dma_addr_t *handle,gfp_t flag)
{
 unsigned long ret;
 unsigned long uncached = 0;



 flag &= ~(__GFP_DMA | __GFP_HIGHMEM);

 if (dev == ((void*)0) || (dev->coherent_dma_mask < 0xffffffff))
  flag |= GFP_DMA;
 ret = (unsigned long)__get_free_pages(flag, get_order(size));

 if (ret == 0)
  return ((void*)0);



 if (ret < XCHAL_KSEG_CACHED_VADDR
     || ret >= XCHAL_KSEG_CACHED_VADDR + XCHAL_KSEG_SIZE)
  BUG();


 if (ret != 0) {
  memset((void*) ret, 0, size);
  uncached = ret+XCHAL_KSEG_BYPASS_VADDR-XCHAL_KSEG_CACHED_VADDR;
  *handle = virt_to_bus((void*)ret);
  __flush_invalidate_dcache_range(ret, size);
 }

 return (void*)uncached;
}
