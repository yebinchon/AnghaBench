
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data_queue {int flags; TYPE_1__* rt2x00dev; } ;
struct TYPE_2__ {int flags; } ;


 int DEVICE_STATE_PRESENT ;
 int QUEUE_PAUSED ;
 int QUEUE_STARTED ;
 int rt2x00queue_pause_queue_nocheck (struct data_queue*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void rt2x00queue_pause_queue(struct data_queue *queue)
{
 if (!test_bit(DEVICE_STATE_PRESENT, &queue->rt2x00dev->flags) ||
     !test_bit(QUEUE_STARTED, &queue->flags) ||
     test_and_set_bit(QUEUE_PAUSED, &queue->flags))
  return;

 rt2x00queue_pause_queue_nocheck(queue);
}
