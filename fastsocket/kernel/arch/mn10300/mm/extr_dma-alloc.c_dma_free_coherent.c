
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;

void dma_free_coherent(struct device *dev, size_t size, void *vaddr,
         dma_addr_t dma_handle)
{
 unsigned long addr = (unsigned long) vaddr & ~0x20000000;

 free_pages(addr, get_order(size));
}
