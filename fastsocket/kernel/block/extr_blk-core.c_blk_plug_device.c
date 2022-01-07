
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ unplug_delay; int unplug_timer; } ;


 int QUEUE_FLAG_PLUGGED ;
 int WARN_ON (int) ;
 scalar_t__ blk_queue_stopped (struct request_queue*) ;
 int irqs_disabled () ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int queue_flag_test_and_set (int ,struct request_queue*) ;
 int trace_block_plug (struct request_queue*) ;

void blk_plug_device(struct request_queue *q)
{
 WARN_ON(!irqs_disabled());





 if (blk_queue_stopped(q))
  return;

 if (!queue_flag_test_and_set(QUEUE_FLAG_PLUGGED, q)) {
  mod_timer(&q->unplug_timer, jiffies + q->unplug_delay);
  trace_block_plug(q);
 }
}
