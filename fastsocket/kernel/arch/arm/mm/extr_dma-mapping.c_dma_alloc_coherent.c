
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 void* __dma_alloc (struct device*,size_t,int *,int ,int ) ;
 scalar_t__ arch_is_coherent () ;
 scalar_t__ dma_alloc_from_coherent (struct device*,size_t,int *,void**) ;
 void* kmalloc (size_t,int ) ;
 int pgprot_kernel ;
 int pgprot_noncached (int ) ;
 int virt_to_dma (struct device*,void*) ;

void *
dma_alloc_coherent(struct device *dev, size_t size, dma_addr_t *handle, gfp_t gfp)
{
 void *memory;

 if (dma_alloc_from_coherent(dev, size, handle, &memory))
  return memory;

 if (arch_is_coherent()) {
  void *virt;

  virt = kmalloc(size, gfp);
  if (!virt)
   return ((void*)0);
  *handle = virt_to_dma(dev, virt);

  return virt;
 }

 return __dma_alloc(dev, size, handle, gfp,
      pgprot_noncached(pgprot_kernel));
}
