
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int frv_cache_wback_inv (scalar_t__,scalar_t__) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_dma_len (struct scatterlist*) ;

int dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
        enum dma_data_direction direction)
{
 int i;

 for (i=0; i<nents; i++)
  frv_cache_wback_inv(sg_dma_address(&sg[i]),
        sg_dma_address(&sg[i]) + sg_dma_len(&sg[i]));

 BUG_ON(direction == DMA_NONE);

 return nents;
}
