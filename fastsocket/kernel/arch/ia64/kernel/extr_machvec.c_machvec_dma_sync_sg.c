
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int mb () ;

void
machvec_dma_sync_sg(struct device *hwdev, struct scatterlist *sg, int n,
      enum dma_data_direction dir)
{
 mb();
}
