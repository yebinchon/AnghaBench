
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int delay_work; int unplug_work; int timeout; int unplug_timer; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;

void blk_sync_queue(struct request_queue *q)
{
 del_timer_sync(&q->unplug_timer);
 del_timer_sync(&q->timeout);
 cancel_work_sync(&q->unplug_work);
 cancel_delayed_work_sync(&q->delay_work);
}
