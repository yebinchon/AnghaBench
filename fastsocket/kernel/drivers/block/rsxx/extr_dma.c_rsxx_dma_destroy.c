
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma_addr; int buf; } ;
struct TYPE_3__ {int dma_addr; int buf; } ;
struct rsxx_dma_ctrl {TYPE_2__ cmd; TYPE_1__ status; int trackers; int queue_lock; int queue; int activity_timer; int * done_wq; int * issue_wq; } ;
struct rsxx_cardinfo {int n_targets; int dev; struct rsxx_dma_ctrl* ctrl; } ;


 int COMMAND_BUFFER_SIZE8 ;
 int COMPLETE_DMA ;
 int STATUS_BUFFER_SIZE8 ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int *) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 int rsxx_cleanup_dma_queue (struct rsxx_dma_ctrl*,int *,int ) ;
 int rsxx_dma_cancel (struct rsxx_dma_ctrl*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ timer_pending (int *) ;
 int vfree (int ) ;

void rsxx_dma_destroy(struct rsxx_cardinfo *card)
{
 struct rsxx_dma_ctrl *ctrl;
 int i;

 for (i = 0; i < card->n_targets; i++) {
  ctrl = &card->ctrl[i];

  if (ctrl->issue_wq) {
   destroy_workqueue(ctrl->issue_wq);
   ctrl->issue_wq = ((void*)0);
  }

  if (ctrl->done_wq) {
   destroy_workqueue(ctrl->done_wq);
   ctrl->done_wq = ((void*)0);
  }

  if (timer_pending(&ctrl->activity_timer))
   del_timer_sync(&ctrl->activity_timer);


  spin_lock_bh(&ctrl->queue_lock);
  rsxx_cleanup_dma_queue(ctrl, &ctrl->queue, COMPLETE_DMA);
  spin_unlock_bh(&ctrl->queue_lock);

  rsxx_dma_cancel(ctrl);

  vfree(ctrl->trackers);

  pci_free_consistent(card->dev, STATUS_BUFFER_SIZE8,
        ctrl->status.buf, ctrl->status.dma_addr);
  pci_free_consistent(card->dev, COMMAND_BUFFER_SIZE8,
        ctrl->cmd.buf, ctrl->cmd.dma_addr);
 }
}
