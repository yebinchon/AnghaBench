
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int dma_release_from_coherent (struct device*,int,void*) ;
 int free_pages (unsigned long,int) ;
 int get_order (size_t) ;

void dma_free_coherent(struct device *dev, size_t size,
    void *vaddr, dma_addr_t dma_handle)
{
 int order = get_order(size);

 if (!dma_release_from_coherent(dev, order, vaddr))
  free_pages((unsigned long)vaddr, order);
}
