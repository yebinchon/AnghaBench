
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int delay_work; } ;


 int QUEUE_FLAG_STOPPED ;
 int blk_remove_plug (struct request_queue*) ;
 int cancel_delayed_work (int *) ;
 int queue_flag_set (int ,struct request_queue*) ;

void blk_stop_queue(struct request_queue *q)
{
 blk_remove_plug(q);
 cancel_delayed_work(&q->delay_work);
 queue_flag_set(QUEUE_FLAG_STOPPED, q);
}
