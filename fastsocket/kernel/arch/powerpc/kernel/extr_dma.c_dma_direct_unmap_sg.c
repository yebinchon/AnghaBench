
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;



__attribute__((used)) static void dma_direct_unmap_sg(struct device *dev, struct scatterlist *sg,
    int nents, enum dma_data_direction direction,
    struct dma_attrs *attrs)
{
}
