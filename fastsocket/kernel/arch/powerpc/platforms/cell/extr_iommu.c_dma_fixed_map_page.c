
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* map_page ) (struct device*,struct page*,unsigned long,size_t,int,struct dma_attrs*) ;} ;


 int DMA_ATTR_WEAK_ORDERING ;
 int cell_get_iommu_table (struct device*) ;
 int device_to_mask (struct device*) ;
 TYPE_1__ dma_direct_ops ;
 scalar_t__ dma_get_attr (int ,struct dma_attrs*) ;
 scalar_t__ iommu_fixed_is_weak ;
 int iommu_map_page (struct device*,int ,struct page*,unsigned long,size_t,int ,int,struct dma_attrs*) ;
 int stub1 (struct device*,struct page*,unsigned long,size_t,int,struct dma_attrs*) ;

__attribute__((used)) static dma_addr_t dma_fixed_map_page(struct device *dev, struct page *page,
         unsigned long offset, size_t size,
         enum dma_data_direction direction,
         struct dma_attrs *attrs)
{
 if (iommu_fixed_is_weak == dma_get_attr(DMA_ATTR_WEAK_ORDERING, attrs))
  return dma_direct_ops.map_page(dev, page, offset, size,
            direction, attrs);
 else
  return iommu_map_page(dev, cell_get_iommu_table(dev), page,
          offset, size, device_to_mask(dev),
          direction, attrs);
}
