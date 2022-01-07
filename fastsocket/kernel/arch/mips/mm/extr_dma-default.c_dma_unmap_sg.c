
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; int dma_address; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int __dma_sync (unsigned long,int ,int) ;
 int plat_device_is_coherent (struct device*) ;
 int plat_unmap_dma_mem (struct device*,int ,int ,int) ;
 scalar_t__ sg_virt (struct scatterlist*) ;

void dma_unmap_sg(struct device *dev, struct scatterlist *sg, int nhwentries,
 enum dma_data_direction direction)
{
 unsigned long addr;
 int i;

 BUG_ON(direction == DMA_NONE);

 for (i = 0; i < nhwentries; i++, sg++) {
  if (!plat_device_is_coherent(dev) &&
      direction != DMA_TO_DEVICE) {
   addr = (unsigned long) sg_virt(sg);
   if (addr)
    __dma_sync(addr, sg->length, direction);
  }
  plat_unmap_dma_mem(dev, sg->dma_address, sg->length, direction);
 }
}
