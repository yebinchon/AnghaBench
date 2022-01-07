
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {int wqh; } ;


 int assert (int ) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

void RingQueue_WakeUpInterruptible(struct RingQueue *rq)
{
 assert(rq != ((void*)0));
 if (waitqueue_active(&rq->wqh))
  wake_up_interruptible(&rq->wqh);
}
