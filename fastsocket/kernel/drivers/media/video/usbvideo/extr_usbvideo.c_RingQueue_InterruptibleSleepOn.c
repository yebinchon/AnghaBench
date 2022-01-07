
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {int wqh; } ;


 int assert (int ) ;
 int interruptible_sleep_on (int *) ;

__attribute__((used)) static void RingQueue_InterruptibleSleepOn(struct RingQueue *rq)
{
 assert(rq != ((void*)0));
 interruptible_sleep_on(&rq->wqh);
}
