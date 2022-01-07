
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {int length; int * queue; scalar_t__ wi; scalar_t__ ri; } ;


 int assert (int) ;
 int * usbvideo_rvmalloc (int) ;

__attribute__((used)) static void RingQueue_Allocate(struct RingQueue *rq, int rqLen)
{




 int i = 1;
 assert(rq != ((void*)0));
 assert(rqLen > 0);

 while(rqLen >> i)
  i++;
 if(rqLen != 1 << (i-1))
  rqLen = 1 << i;

 rq->length = rqLen;
 rq->ri = rq->wi = 0;
 rq->queue = usbvideo_rvmalloc(rq->length);
 assert(rq->queue != ((void*)0));
}
