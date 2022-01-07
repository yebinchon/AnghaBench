
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int delay_work; } ;


 int __cancel_delayed_work (int *) ;
 int blk_queue_stopped (struct request_queue*) ;
 int kblockd_workqueue ;
 scalar_t__ likely (int) ;
 int queue_delayed_work (int ,int *,int ) ;

void blk_run_queue_async(struct request_queue *q)
{
 if (likely(!blk_queue_stopped(q))) {
  __cancel_delayed_work(&q->delay_work);
  queue_delayed_work(kblockd_workqueue, &q->delay_work, 0);
 }
}
