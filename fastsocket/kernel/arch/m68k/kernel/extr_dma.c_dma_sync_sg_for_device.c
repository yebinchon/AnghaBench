
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; int dma_address; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_sync_single_for_device (struct device*,int ,int ,int) ;

void dma_sync_sg_for_device(struct device *dev, struct scatterlist *sg, int nents,
       enum dma_data_direction dir)
{
 int i;

 for (i = 0; i < nents; sg++, i++)
  dma_sync_single_for_device(dev, sg->dma_address, sg->length, dir);
}
