
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int device_to_mask (struct device*) ;
 int get_iommu_table_base (struct device*) ;
 int iommu_map_sg (struct device*,int ,struct scatterlist*,int,int ,int,struct dma_attrs*) ;

__attribute__((used)) static int dma_iommu_map_sg(struct device *dev, struct scatterlist *sglist,
       int nelems, enum dma_data_direction direction,
       struct dma_attrs *attrs)
{
 return iommu_map_sg(dev, get_iommu_table_base(dev), sglist, nelems,
       device_to_mask(dev), direction, attrs);
}
