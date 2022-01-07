
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int __dma_sync (unsigned long,int ,int) ;
 scalar_t__ page_address (int ) ;
 int plat_device_is_coherent (struct device*) ;
 int sg_page (struct scatterlist*) ;

void dma_sync_sg_for_device(struct device *dev, struct scatterlist *sg, int nelems,
 enum dma_data_direction direction)
{
 int i;

 BUG_ON(direction == DMA_NONE);


 for (i = 0; i < nelems; i++, sg++) {
  if (!plat_device_is_coherent(dev))
   __dma_sync((unsigned long)page_address(sg_page(sg)),
              sg->length, direction);
 }
}
