
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct data_queue {scalar_t__ qid; int status_lock; TYPE_3__* rt2x00dev; int flags; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {int (* flush_queue ) (struct data_queue*,int) ;int (* kick_queue ) (struct data_queue*) ;} ;


 scalar_t__ QID_AC_BE ;
 scalar_t__ QID_AC_BK ;
 scalar_t__ QID_AC_VI ;
 scalar_t__ QID_AC_VO ;
 int QUEUE_STARTED ;
 scalar_t__ likely (int (*) (struct data_queue*,int)) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00_warn (TYPE_3__*,char*,scalar_t__) ;
 int rt2x00queue_empty (struct data_queue*) ;
 int rt2x00queue_pause_queue (struct data_queue*) ;
 int rt2x00queue_unpause_queue (struct data_queue*) ;
 int stub1 (struct data_queue*) ;
 int stub2 (struct data_queue*,int) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void rt2x00queue_flush_queue(struct data_queue *queue, bool drop)
{
 bool started;
 bool tx_queue =
  (queue->qid == QID_AC_VO) ||
  (queue->qid == QID_AC_VI) ||
  (queue->qid == QID_AC_BE) ||
  (queue->qid == QID_AC_BK);

 mutex_lock(&queue->status_lock);
 started = test_bit(QUEUE_STARTED, &queue->flags);
 if (started) {



  rt2x00queue_pause_queue(queue);







  if (!drop && tx_queue)
   queue->rt2x00dev->ops->lib->kick_queue(queue);
 }






 if (likely(queue->rt2x00dev->ops->lib->flush_queue))
  queue->rt2x00dev->ops->lib->flush_queue(queue, drop);




 if (unlikely(!rt2x00queue_empty(queue)))
  rt2x00_warn(queue->rt2x00dev, "Queue %d failed to flush\n",
       queue->qid);




 if (started)
  rt2x00queue_unpause_queue(queue);

 mutex_unlock(&queue->status_lock);
}
