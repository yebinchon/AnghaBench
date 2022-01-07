
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {struct dma_coherent_mem* bitmap; int virt_base; } ;
struct device {struct dma_coherent_mem* dma_mem; } ;


 int iounmap (int ) ;
 int kfree (struct dma_coherent_mem*) ;

void dma_release_declared_memory(struct device *dev)
{
 struct dma_coherent_mem *mem = dev->dma_mem;

 if (!mem)
  return;
 dev->dma_mem = ((void*)0);
 iounmap(mem->virt_base);
 kfree(mem->bitmap);
 kfree(mem);
}
