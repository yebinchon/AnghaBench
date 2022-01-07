
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {unsigned int dma_drain_size; void* dma_drain_buffer; int * dma_drain_needed; } ;
typedef int dma_drain_needed_fn ;


 int EINVAL ;
 int blk_queue_max_segments (struct request_queue*,int) ;
 int queue_max_segments (struct request_queue*) ;

int blk_queue_dma_drain(struct request_queue *q,
          dma_drain_needed_fn *dma_drain_needed,
          void *buf, unsigned int size)
{
 if (queue_max_segments(q) < 2)
  return -EINVAL;

 blk_queue_max_segments(q, queue_max_segments(q) - 1);
 q->dma_drain_needed = dma_drain_needed;
 q->dma_drain_buffer = buf;
 q->dma_drain_size = size;

 return 0;
}
