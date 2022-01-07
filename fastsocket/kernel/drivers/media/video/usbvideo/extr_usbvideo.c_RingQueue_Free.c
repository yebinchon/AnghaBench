
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {scalar_t__ length; int * queue; } ;


 scalar_t__ RingQueue_IsAllocated (struct RingQueue*) ;
 int assert (int ) ;
 int usbvideo_rvfree (int *,scalar_t__) ;

__attribute__((used)) static void RingQueue_Free(struct RingQueue *rq)
{
 assert(rq != ((void*)0));
 if (RingQueue_IsAllocated(rq)) {
  usbvideo_rvfree(rq->queue, rq->length);
  rq->queue = ((void*)0);
  rq->length = 0;
 }
}
