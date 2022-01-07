
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ dma_address; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int invalidate_dcache_range (scalar_t__,scalar_t__) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_dma_len (struct scatterlist*) ;
 scalar_t__ sg_virt (struct scatterlist*) ;

int
dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
    enum dma_data_direction direction)
{
 int i;

 BUG_ON(direction == DMA_NONE);

 for (i = 0; i < nents; i++, sg++) {
  sg->dma_address = (dma_addr_t) sg_virt(sg);

  invalidate_dcache_range(sg_dma_address(sg),
     sg_dma_address(sg) +
     sg_dma_len(sg));
 }

 return nents;
}
