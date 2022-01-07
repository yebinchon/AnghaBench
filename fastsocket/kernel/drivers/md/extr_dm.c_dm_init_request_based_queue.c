
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ elevator; } ;
struct mapped_device {struct request_queue* queue; } ;


 struct request_queue* blk_init_allocated_queue (struct request_queue*,int ,int *) ;
 int blk_queue_lld_busy (struct request_queue*,int ) ;
 int blk_queue_prep_rq (struct request_queue*,int ) ;
 int blk_queue_softirq_done (struct request_queue*,int ) ;
 int dm_init_md_queue (struct mapped_device*) ;
 int dm_lld_busy ;
 int dm_prep_fn ;
 int dm_request_fn ;
 int dm_softirq_done ;
 int elv_register_queue (struct request_queue*) ;

__attribute__((used)) static int dm_init_request_based_queue(struct mapped_device *md)
{
 struct request_queue *q = ((void*)0);

 if (md->queue->elevator)
  return 1;


 q = blk_init_allocated_queue(md->queue, dm_request_fn, ((void*)0));
 if (!q)
  return 0;

 md->queue = q;
 dm_init_md_queue(md);
 blk_queue_softirq_done(md->queue, dm_softirq_done);
 blk_queue_prep_rq(md->queue, dm_prep_fn);
 blk_queue_lld_busy(md->queue, dm_lld_busy);

 elv_register_queue(md->queue);

 return 1;
}
