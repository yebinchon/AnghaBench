
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {unsigned int dma_pad_mask; } ;



void blk_queue_dma_pad(struct request_queue *q, unsigned int mask)
{
 q->dma_pad_mask = mask;
}
