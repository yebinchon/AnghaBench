
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_q_depth; } ;
struct rsxx_dma_ctrl {int trackers; TYPE_1__ stats; } ;
struct rsxx_dma {int dummy; } ;


 int DMA_CANCELLED ;
 int RSXX_MAX_OUTSTANDING_CMDS ;
 int atomic_dec (int *) ;
 struct rsxx_dma* get_tracker_dma (int ,int) ;
 int push_tracker (int ,int) ;
 int rsxx_complete_dma (struct rsxx_dma_ctrl*,struct rsxx_dma*,int ) ;

int rsxx_dma_cancel(struct rsxx_dma_ctrl *ctrl)
{
 struct rsxx_dma *dma;
 int i;
 int cnt = 0;


 for (i = 0; i < RSXX_MAX_OUTSTANDING_CMDS; i++) {
  dma = get_tracker_dma(ctrl->trackers, i);
  if (dma) {
   atomic_dec(&ctrl->stats.hw_q_depth);
   rsxx_complete_dma(ctrl, dma, DMA_CANCELLED);
   push_tracker(ctrl->trackers, i);
   cnt++;
  }
 }

 return cnt;
}
