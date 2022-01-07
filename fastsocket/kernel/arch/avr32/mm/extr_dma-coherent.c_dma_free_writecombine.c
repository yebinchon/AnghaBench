
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int __dma_free (struct device*,size_t,struct page*,int ) ;
 int iounmap (void*) ;
 struct page* phys_to_page (int ) ;

void dma_free_writecombine(struct device *dev, size_t size,
      void *cpu_addr, dma_addr_t handle)
{
 struct page *page;

 iounmap(cpu_addr);

 page = phys_to_page(handle);
 __dma_free(dev, size, page, handle);
}
