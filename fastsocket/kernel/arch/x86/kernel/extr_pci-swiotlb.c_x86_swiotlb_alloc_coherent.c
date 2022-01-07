
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 void* dma_generic_alloc_coherent (struct device*,size_t,int *,int ) ;
 void* swiotlb_alloc_coherent (struct device*,size_t,int *,int ) ;

__attribute__((used)) static void *x86_swiotlb_alloc_coherent(struct device *hwdev, size_t size,
     dma_addr_t *dma_handle, gfp_t flags)
{
 void *vaddr;

 vaddr = dma_generic_alloc_coherent(hwdev, size, dma_handle, flags);
 if (vaddr)
  return vaddr;

 return swiotlb_alloc_coherent(hwdev, size, dma_handle, flags);
}
