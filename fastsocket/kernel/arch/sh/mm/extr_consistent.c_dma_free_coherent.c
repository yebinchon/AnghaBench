
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef unsigned long dma_addr_t ;


 unsigned long PAGE_SHIFT ;
 int WARN_ON (int ) ;
 int __free_pages (int ,int ) ;
 int debug_dma_free_coherent (struct device*,size_t,void*,unsigned long) ;
 scalar_t__ dma_release_from_coherent (struct device*,int,void*) ;
 int get_order (size_t) ;
 int iounmap (void*) ;
 int irqs_disabled () ;
 int pfn_to_page (unsigned long) ;

void dma_free_coherent(struct device *dev, size_t size,
    void *vaddr, dma_addr_t dma_handle)
{
 int order = get_order(size);
 unsigned long pfn = dma_handle >> PAGE_SHIFT;
 int k;

 WARN_ON(irqs_disabled());

 if (dma_release_from_coherent(dev, order, vaddr))
  return;

 debug_dma_free_coherent(dev, size, vaddr, dma_handle);
 for (k = 0; k < (1 << order); k++)
  __free_pages(pfn_to_page(pfn + k), 0);
 iounmap(vaddr);
}
