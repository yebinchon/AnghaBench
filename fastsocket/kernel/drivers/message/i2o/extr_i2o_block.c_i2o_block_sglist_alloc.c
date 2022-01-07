
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct i2o_controller {TYPE_1__* pdev; } ;
struct i2o_block_request {int sg_nents; int sg_table; TYPE_2__* req; int * dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_5__ {int q; } ;
struct TYPE_4__ {int dev; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ READ ;
 int blk_rq_map_sg (int ,TYPE_2__*,int ) ;
 int i2o_dma_map_sg (struct i2o_controller*,int ,int,int,int **) ;
 scalar_t__ rq_data_dir (TYPE_2__*) ;

__attribute__((used)) static inline int i2o_block_sglist_alloc(struct i2o_controller *c,
      struct i2o_block_request *ireq,
      u32 ** mptr)
{
 int nents;
 enum dma_data_direction direction;

 ireq->dev = &c->pdev->dev;
 nents = blk_rq_map_sg(ireq->req->q, ireq->req, ireq->sg_table);

 if (rq_data_dir(ireq->req) == READ)
  direction = PCI_DMA_FROMDEVICE;
 else
  direction = PCI_DMA_TODEVICE;

 ireq->sg_nents = nents;

 return i2o_dma_map_sg(c, ireq->sg_table, nents, direction, mptr);
}
