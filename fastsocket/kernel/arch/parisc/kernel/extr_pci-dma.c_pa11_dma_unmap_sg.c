
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int flush_kernel_dcache_range (int ,int ) ;
 int sg_virt_addr (struct scatterlist*) ;

__attribute__((used)) static void pa11_dma_unmap_sg(struct device *dev, struct scatterlist *sglist, int nents, enum dma_data_direction direction)
{
 int i;

 BUG_ON(direction == DMA_NONE);

 if (direction == DMA_TO_DEVICE)
     return;



 for (i = 0; i < nents; i++, sglist++ )
  flush_kernel_dcache_range(sg_virt_addr(sglist), sglist->length);
 return;
}
