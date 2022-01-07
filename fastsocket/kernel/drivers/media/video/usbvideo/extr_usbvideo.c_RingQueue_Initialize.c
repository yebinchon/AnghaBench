
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {int wqh; } ;


 int assert (int ) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static void RingQueue_Initialize(struct RingQueue *rq)
{
 assert(rq != ((void*)0));
 init_waitqueue_head(&rq->wqh);
}
