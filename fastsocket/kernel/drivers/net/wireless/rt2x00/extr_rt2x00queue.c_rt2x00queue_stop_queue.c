
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct data_queue {int status_lock; TYPE_3__* rt2x00dev; int flags; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {int (* stop_queue ) (struct data_queue*) ;} ;


 int QUEUE_STARTED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00queue_pause_queue_nocheck (struct data_queue*) ;
 int stub1 (struct data_queue*) ;
 int test_and_clear_bit (int ,int *) ;

void rt2x00queue_stop_queue(struct data_queue *queue)
{
 mutex_lock(&queue->status_lock);

 if (!test_and_clear_bit(QUEUE_STARTED, &queue->flags)) {
  mutex_unlock(&queue->status_lock);
  return;
 }

 rt2x00queue_pause_queue_nocheck(queue);

 queue->rt2x00dev->ops->lib->stop_queue(queue);

 mutex_unlock(&queue->status_lock);
}
