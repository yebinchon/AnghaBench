
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int device_to_mask (struct device*) ;
 int get_iommu_table_base (struct device*) ;
 int iommu_map_page (struct device*,int ,struct page*,unsigned long,size_t,int ,int,struct dma_attrs*) ;

__attribute__((used)) static dma_addr_t dma_iommu_map_page(struct device *dev, struct page *page,
         unsigned long offset, size_t size,
         enum dma_data_direction direction,
         struct dma_attrs *attrs)
{
 return iommu_map_page(dev, get_iommu_table_base(dev), page, offset,
         size, device_to_mask(dev), direction, attrs);
}
