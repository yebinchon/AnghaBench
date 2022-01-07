
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int free_pages (unsigned long,int ) ;
 int gart_unmap_page (struct device*,int ,size_t,int ,int *) ;
 int get_order (size_t) ;

__attribute__((used)) static void
gart_free_coherent(struct device *dev, size_t size, void *vaddr,
     dma_addr_t dma_addr)
{
 gart_unmap_page(dev, dma_addr, size, DMA_BIDIRECTIONAL, ((void*)0));
 free_pages((unsigned long)vaddr, get_order(size));
}
