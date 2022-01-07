
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ __get_free_pages (int ,int ) ;
 int get_order (size_t) ;
 scalar_t__ virt_to_phys (void*) ;

__attribute__((used)) static void *pa11_dma_alloc_noncoherent(struct device *dev, size_t size,
       dma_addr_t *dma_handle, gfp_t flag)
{
 void *addr;

 addr = (void *)__get_free_pages(flag, get_order(size));
 if (addr)
  *dma_handle = (dma_addr_t)virt_to_phys(addr);

 return addr;
}
