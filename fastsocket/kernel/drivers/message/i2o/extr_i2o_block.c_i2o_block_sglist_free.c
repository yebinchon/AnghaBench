
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_block_request {int sg_nents; int sg_table; int dev; int req; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ READ ;
 int dma_unmap_sg (int ,int ,int ,int) ;
 scalar_t__ rq_data_dir (int ) ;

__attribute__((used)) static inline void i2o_block_sglist_free(struct i2o_block_request *ireq)
{
 enum dma_data_direction direction;

 if (rq_data_dir(ireq->req) == READ)
  direction = PCI_DMA_FROMDEVICE;
 else
  direction = PCI_DMA_TODEVICE;

 dma_unmap_sg(ireq->dev, ireq->sg_table, ireq->sg_nents, direction);
}
