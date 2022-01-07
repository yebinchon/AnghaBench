
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int prev; } ;
struct fsl_dma_chan {int feature; TYPE_3__ ld_queue; } ;
struct TYPE_5__ {int phys; } ;
struct TYPE_4__ {int next_ln_addr; } ;
struct fsl_desc_sw {TYPE_2__ async_tx; TYPE_1__ hw; } ;


 int CPU_TO_DMA (struct fsl_dma_chan*,int,int) ;
 int FSL_DMA_EOSIE ;
 int FSL_DMA_IP_83XX ;
 int FSL_DMA_IP_MASK ;
 int FSL_DMA_SNEN ;
 scalar_t__ list_empty (TYPE_3__*) ;
 struct fsl_desc_sw* to_fsl_desc (int ) ;

__attribute__((used)) static void append_ld_queue(struct fsl_dma_chan *fsl_chan,
  struct fsl_desc_sw *new_desc)
{
 struct fsl_desc_sw *queue_tail = to_fsl_desc(fsl_chan->ld_queue.prev);

 if (list_empty(&fsl_chan->ld_queue))
  return;
 queue_tail->hw.next_ln_addr = CPU_TO_DMA(fsl_chan,
   new_desc->async_tx.phys | FSL_DMA_EOSIE |
   (((fsl_chan->feature & FSL_DMA_IP_MASK)
    == FSL_DMA_IP_83XX) ? FSL_DMA_SNEN : 0), 64);
}
