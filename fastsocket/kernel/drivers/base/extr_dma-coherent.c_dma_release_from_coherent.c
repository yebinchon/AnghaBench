
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {void* virt_base; int size; int bitmap; } ;
struct device {struct dma_coherent_mem* dma_mem; } ;


 int PAGE_SHIFT ;
 int bitmap_release_region (int ,int,int) ;

int dma_release_from_coherent(struct device *dev, int order, void *vaddr)
{
 struct dma_coherent_mem *mem = dev ? dev->dma_mem : ((void*)0);

 if (mem && vaddr >= mem->virt_base && vaddr <
     (mem->virt_base + (mem->size << PAGE_SHIFT))) {
  int page = (vaddr - mem->virt_base) >> PAGE_SHIFT;

  bitmap_release_region(mem->bitmap, page, order);
  return 1;
 }
 return 0;
}
