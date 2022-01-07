
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct data_queue {int status_lock; TYPE_3__* rt2x00dev; int flags; } ;
struct TYPE_6__ {TYPE_2__* ops; int flags; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {int (* start_queue ) (struct data_queue*) ;} ;


 int DEVICE_STATE_PRESENT ;
 int QUEUE_PAUSED ;
 int QUEUE_STARTED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00queue_unpause_queue (struct data_queue*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct data_queue*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void rt2x00queue_start_queue(struct data_queue *queue)
{
 mutex_lock(&queue->status_lock);

 if (!test_bit(DEVICE_STATE_PRESENT, &queue->rt2x00dev->flags) ||
     test_and_set_bit(QUEUE_STARTED, &queue->flags)) {
  mutex_unlock(&queue->status_lock);
  return;
 }

 set_bit(QUEUE_PAUSED, &queue->flags);

 queue->rt2x00dev->ops->lib->start_queue(queue);

 rt2x00queue_unpause_queue(queue);

 mutex_unlock(&queue->status_lock);
}
