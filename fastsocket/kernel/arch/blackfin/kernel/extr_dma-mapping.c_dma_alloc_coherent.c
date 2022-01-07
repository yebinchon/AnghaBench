
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 scalar_t__ __alloc_dma_pages (int ) ;
 int get_pages (size_t) ;
 int memset (void*,int ,size_t) ;
 int virt_to_phys (void*) ;

void *dma_alloc_coherent(struct device *dev, size_t size,
    dma_addr_t * dma_handle, gfp_t gfp)
{
 void *ret;

 ret = (void *)__alloc_dma_pages(get_pages(size));

 if (ret) {
  memset(ret, 0, size);
  *dma_handle = virt_to_phys(ret);
 }

 return ret;
}
