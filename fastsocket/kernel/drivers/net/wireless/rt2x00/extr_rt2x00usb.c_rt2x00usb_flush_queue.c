
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct data_queue {int qid; TYPE_1__* rt2x00dev; } ;
struct TYPE_2__ {int workqueue; struct work_struct rxdone_work; struct work_struct txdone_work; } ;







 int Q_INDEX ;
 int Q_INDEX_DONE ;
 int msleep (int) ;
 int queue_work (int ,struct work_struct*) ;
 scalar_t__ rt2x00queue_empty (struct data_queue*) ;
 int rt2x00queue_for_each_entry (struct data_queue*,int ,int ,int *,int ) ;
 int rt2x00usb_flush_entry ;

void rt2x00usb_flush_queue(struct data_queue *queue, bool drop)
{
 struct work_struct *completion;
 unsigned int i;

 if (drop)
  rt2x00queue_for_each_entry(queue, Q_INDEX_DONE, Q_INDEX, ((void*)0),
        rt2x00usb_flush_entry);




 switch (queue->qid) {
 case 129:
 case 130:
 case 132:
 case 131:
  completion = &queue->rt2x00dev->txdone_work;
  break;
 case 128:
  completion = &queue->rt2x00dev->rxdone_work;
  break;
 default:
  return;
 }

 for (i = 0; i < 10; i++) {





  if (rt2x00queue_empty(queue))
   break;





  queue_work(queue->rt2x00dev->workqueue, completion);





  msleep(10);
 }
}
