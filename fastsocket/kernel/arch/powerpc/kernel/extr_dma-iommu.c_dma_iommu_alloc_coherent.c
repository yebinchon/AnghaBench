
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int dev_to_node (struct device*) ;
 int device_to_mask (struct device*) ;
 int get_iommu_table_base (struct device*) ;
 void* iommu_alloc_coherent (struct device*,int ,size_t,int *,int ,int ,int ) ;

__attribute__((used)) static void *dma_iommu_alloc_coherent(struct device *dev, size_t size,
          dma_addr_t *dma_handle, gfp_t flag)
{
 return iommu_alloc_coherent(dev, get_iommu_table_base(dev), size,
        dma_handle, device_to_mask(dev), flag,
        dev_to_node(dev));
}
