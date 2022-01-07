
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sw_q_depth; } ;
struct rsxx_dma_ctrl {int queue_lock; int queue; TYPE_1__ stats; } ;
struct rsxx_dma {int list; } ;


 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void rsxx_requeue_dma(struct rsxx_dma_ctrl *ctrl,
     struct rsxx_dma *dma)
{




 spin_lock_bh(&ctrl->queue_lock);
 ctrl->stats.sw_q_depth++;
 list_add(&dma->list, &ctrl->queue);
 spin_unlock_bh(&ctrl->queue_lock);
}
