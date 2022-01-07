
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dma_alignment; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;

void blk_queue_update_dma_alignment(struct request_queue *q, int mask)
{
 BUG_ON(mask > PAGE_SIZE);

 if (mask > q->dma_alignment)
  q->dma_alignment = mask;
}
