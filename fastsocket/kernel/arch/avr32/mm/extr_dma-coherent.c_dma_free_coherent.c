
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int BUG_ON (int) ;
 int __dma_free (struct device*,size_t,struct page*,scalar_t__) ;
 void* phys_to_cached (int ) ;
 int pr_debug (char*,void*,unsigned long,unsigned int) ;
 int uncached_to_phys (void*) ;
 int virt_addr_valid (void*) ;
 struct page* virt_to_page (void*) ;

void dma_free_coherent(struct device *dev, size_t size,
         void *cpu_addr, dma_addr_t handle)
{
 void *addr = phys_to_cached(uncached_to_phys(cpu_addr));
 struct page *page;

 pr_debug("dma_free_coherent addr %p (phys %08lx) size %u\n",
   cpu_addr, (unsigned long)handle, (unsigned)size);
 BUG_ON(!virt_addr_valid(addr));
 page = virt_to_page(addr);
 __dma_free(dev, size, page, handle);
}
