
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct request_queue {int unplug_thresh; int unplug_delay; int limits; TYPE_1__ unplug_timer; int nr_batching; int * make_request_fn; int nr_requests; } ;
typedef int make_request_fn ;


 int BLKDEV_MAX_RQ ;
 int BLK_BATCH_REQ ;
 int BLK_BOUNCE_HIGH ;
 int blk_queue_bounce_limit (struct request_queue*,int ) ;
 int blk_queue_congestion_threshold (struct request_queue*) ;
 int blk_queue_dma_alignment (struct request_queue*,int) ;
 int blk_set_default_limits (int *) ;
 int blk_unplug_timeout ;
 int msecs_to_jiffies (int) ;

void blk_queue_make_request(struct request_queue *q, make_request_fn *mfn)
{



 q->nr_requests = BLKDEV_MAX_RQ;

 q->make_request_fn = mfn;
 blk_queue_dma_alignment(q, 511);
 blk_queue_congestion_threshold(q);
 q->nr_batching = BLK_BATCH_REQ;

 q->unplug_thresh = 4;
 q->unplug_delay = msecs_to_jiffies(3);
 if (q->unplug_delay == 0)
  q->unplug_delay = 1;

 q->unplug_timer.function = blk_unplug_timeout;
 q->unplug_timer.data = (unsigned long)q;

 blk_set_default_limits(&q->limits);




 blk_queue_bounce_limit(q, BLK_BOUNCE_HIGH);
}
