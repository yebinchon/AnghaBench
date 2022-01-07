
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; int dma_address; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int __dma_sync (unsigned long,int ,int) ;
 int plat_device_is_coherent (struct device*) ;
 int plat_map_dma_mem (struct device*,void*,int ) ;
 scalar_t__ sg_virt (struct scatterlist*) ;

int dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 enum dma_data_direction direction)
{
 int i;

 BUG_ON(direction == DMA_NONE);

 for (i = 0; i < nents; i++, sg++) {
  unsigned long addr;

  addr = (unsigned long) sg_virt(sg);
  if (!plat_device_is_coherent(dev) && addr)
   __dma_sync(addr, sg->length, direction);
  sg->dma_address = plat_map_dma_mem(dev,
                       (void *)addr, sg->length);
 }

 return nents;
}
