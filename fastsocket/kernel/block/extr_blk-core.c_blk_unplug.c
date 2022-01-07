
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int (* unplug_fn ) (struct request_queue*) ;} ;


 int stub1 (struct request_queue*) ;
 int trace_block_unplug_io (struct request_queue*) ;

void blk_unplug(struct request_queue *q)
{



 if (q->unplug_fn) {
  trace_block_unplug_io(q);
  q->unplug_fn(q);
 }
}
