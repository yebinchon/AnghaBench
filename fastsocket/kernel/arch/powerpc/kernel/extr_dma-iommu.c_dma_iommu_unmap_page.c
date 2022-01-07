
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int get_iommu_table_base (struct device*) ;
 int iommu_unmap_page (int ,int ,size_t,int,struct dma_attrs*) ;

__attribute__((used)) static void dma_iommu_unmap_page(struct device *dev, dma_addr_t dma_handle,
     size_t size, enum dma_data_direction direction,
     struct dma_attrs *attrs)
{
 iommu_unmap_page(get_iommu_table_base(dev), dma_handle, size, direction,
    attrs);
}
