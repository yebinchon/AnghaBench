
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {scalar_t__ length; int * queue; } ;



__attribute__((used)) static int RingQueue_IsAllocated(const struct RingQueue *rq)
{
 if (rq == ((void*)0))
  return 0;
 return (rq->queue != ((void*)0)) && (rq->length > 0);
}
