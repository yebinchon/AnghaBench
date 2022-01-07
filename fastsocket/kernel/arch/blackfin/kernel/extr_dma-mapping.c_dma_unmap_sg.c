
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int DMA_NONE ;

void dma_unmap_sg(struct device *dev, struct scatterlist *sg,
  int nhwentries, enum dma_data_direction direction)
{
 BUG_ON(direction == DMA_NONE);
}
