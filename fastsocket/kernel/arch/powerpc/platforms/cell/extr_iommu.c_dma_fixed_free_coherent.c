
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* free_coherent ) (struct device*,size_t,void*,int ) ;} ;


 int cell_get_iommu_table (struct device*) ;
 TYPE_1__ dma_direct_ops ;
 scalar_t__ iommu_fixed_is_weak ;
 int iommu_free_coherent (int ,size_t,void*,int ) ;
 int stub1 (struct device*,size_t,void*,int ) ;

__attribute__((used)) static void dma_fixed_free_coherent(struct device *dev, size_t size,
        void *vaddr, dma_addr_t dma_handle)
{
 if (iommu_fixed_is_weak)
  iommu_free_coherent(cell_get_iommu_table(dev), size, vaddr,
        dma_handle);
 else
  dma_direct_ops.free_coherent(dev, size, vaddr, dma_handle);
}
