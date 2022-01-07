
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int unplug_timer; } ;


 int QUEUE_FLAG_PLUGGED ;
 int WARN_ON (int) ;
 int del_timer (int *) ;
 int irqs_disabled () ;
 int queue_flag_test_and_clear (int ,struct request_queue*) ;

int blk_remove_plug(struct request_queue *q)
{
 WARN_ON(!irqs_disabled());

 if (!queue_flag_test_and_clear(QUEUE_FLAG_PLUGGED, q))
  return 0;

 del_timer(&q->unplug_timer);
 return 1;
}
