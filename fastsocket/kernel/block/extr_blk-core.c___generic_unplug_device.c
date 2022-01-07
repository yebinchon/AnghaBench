
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int (* request_fn ) (struct request_queue*) ;} ;


 int blk_queue_nonrot (struct request_queue*) ;
 int blk_queue_stopped (struct request_queue*) ;
 int blk_remove_plug (struct request_queue*) ;
 int stub1 (struct request_queue*) ;
 scalar_t__ unlikely (int ) ;

void __generic_unplug_device(struct request_queue *q)
{
 if (unlikely(blk_queue_stopped(q)))
  return;
 if (!blk_remove_plug(q) && !blk_queue_nonrot(q))
  return;

 q->request_fn(q);
}
