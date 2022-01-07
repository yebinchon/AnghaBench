
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_cancelled; int dma_hw_fault; int dma_sw_err; } ;
struct rsxx_dma_ctrl {int card; TYPE_1__ stats; } ;
struct rsxx_dma {int cb_data; int (* cb ) (int ,int ,int) ;} ;


 unsigned int DMA_CANCELLED ;
 unsigned int DMA_HW_FAULT ;
 unsigned int DMA_SW_ERR ;
 int rsxx_free_dma (struct rsxx_dma_ctrl*,struct rsxx_dma*) ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static void rsxx_complete_dma(struct rsxx_dma_ctrl *ctrl,
      struct rsxx_dma *dma,
      unsigned int status)
{
 if (status & DMA_SW_ERR)
  ctrl->stats.dma_sw_err++;
 if (status & DMA_HW_FAULT)
  ctrl->stats.dma_hw_fault++;
 if (status & DMA_CANCELLED)
  ctrl->stats.dma_cancelled++;

 if (dma->cb)
  dma->cb(ctrl->card, dma->cb_data, status ? 1 : 0);

 rsxx_free_dma(ctrl, dma);
}
