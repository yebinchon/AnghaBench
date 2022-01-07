
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int (* unmap_sg ) (struct device*,struct scatterlist*,int,int,struct dma_attrs*) ;} ;


 int DMA_ATTR_WEAK_ORDERING ;
 int cell_get_iommu_table (struct device*) ;
 TYPE_1__ dma_direct_ops ;
 scalar_t__ dma_get_attr (int ,struct dma_attrs*) ;
 scalar_t__ iommu_fixed_is_weak ;
 int iommu_unmap_sg (int ,struct scatterlist*,int,int,struct dma_attrs*) ;
 int stub1 (struct device*,struct scatterlist*,int,int,struct dma_attrs*) ;

__attribute__((used)) static void dma_fixed_unmap_sg(struct device *dev, struct scatterlist *sg,
          int nents, enum dma_data_direction direction,
          struct dma_attrs *attrs)
{
 if (iommu_fixed_is_weak == dma_get_attr(DMA_ATTR_WEAK_ORDERING, attrs))
  dma_direct_ops.unmap_sg(dev, sg, nents, direction, attrs);
 else
  iommu_unmap_sg(cell_get_iommu_table(dev), sg, nents, direction,
          attrs);
}
