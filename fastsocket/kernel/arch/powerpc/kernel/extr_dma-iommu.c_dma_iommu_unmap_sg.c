
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int get_iommu_table_base (struct device*) ;
 int iommu_unmap_sg (int ,struct scatterlist*,int,int,struct dma_attrs*) ;

__attribute__((used)) static void dma_iommu_unmap_sg(struct device *dev, struct scatterlist *sglist,
  int nelems, enum dma_data_direction direction,
  struct dma_attrs *attrs)
{
 iommu_unmap_sg(get_iommu_table_base(dev), sglist, nelems, direction,
         attrs);
}
