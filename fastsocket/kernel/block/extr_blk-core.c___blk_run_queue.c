
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int (* request_fn ) (struct request_queue*) ;} ;


 int blk_queue_stopped (struct request_queue*) ;
 int blk_remove_plug (struct request_queue*) ;
 scalar_t__ elv_queue_empty (struct request_queue*) ;
 int stub1 (struct request_queue*) ;
 scalar_t__ unlikely (int ) ;

void __blk_run_queue(struct request_queue *q)
{
 blk_remove_plug(q);

 if (unlikely(blk_queue_stopped(q)))
  return;

 if (elv_queue_empty(q))
  return;

 q->request_fn(q);
}
