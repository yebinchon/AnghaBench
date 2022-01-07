
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {scalar_t__ wi; scalar_t__ ri; } ;


 int assert (int ) ;

void RingQueue_Flush(struct RingQueue *rq)
{
 assert(rq != ((void*)0));
 rq->ri = 0;
 rq->wi = 0;
}
