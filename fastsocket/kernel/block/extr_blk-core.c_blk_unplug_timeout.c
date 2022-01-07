
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int unplug_work; } ;


 int kblockd_schedule_work (struct request_queue*,int *) ;
 int trace_block_unplug_timer (struct request_queue*) ;

void blk_unplug_timeout(unsigned long data)
{
 struct request_queue *q = (struct request_queue *)data;

 trace_block_unplug_timer(q);
 kblockd_schedule_work(q, &q->unplug_work);
}
