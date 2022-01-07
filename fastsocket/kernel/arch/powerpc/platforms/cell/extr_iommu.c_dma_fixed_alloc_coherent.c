
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {void* (* alloc_coherent ) (struct device*,size_t,int *,int ) ;} ;


 int cell_get_iommu_table (struct device*) ;
 int dev_to_node (struct device*) ;
 int device_to_mask (struct device*) ;
 TYPE_1__ dma_direct_ops ;
 void* iommu_alloc_coherent (struct device*,int ,size_t,int *,int ,int ,int ) ;
 scalar_t__ iommu_fixed_is_weak ;
 void* stub1 (struct device*,size_t,int *,int ) ;

__attribute__((used)) static void *dma_fixed_alloc_coherent(struct device *dev, size_t size,
          dma_addr_t *dma_handle, gfp_t flag)
{
 if (iommu_fixed_is_weak)
  return iommu_alloc_coherent(dev, cell_get_iommu_table(dev),
         size, dma_handle,
         device_to_mask(dev), flag,
         dev_to_node(dev));
 else
  return dma_direct_ops.alloc_coherent(dev, size, dma_handle,
           flag);
}
