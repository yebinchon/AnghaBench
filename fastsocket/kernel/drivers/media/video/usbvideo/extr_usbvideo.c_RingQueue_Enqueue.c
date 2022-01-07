
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {scalar_t__ length; int wi; int queue; } ;


 int RING_QUEUE_ADVANCE_INDEX (struct RingQueue*,int ,int) ;
 int assert (int) ;
 int memcpy (int,unsigned char const*,int) ;
 int wi ;

int RingQueue_Enqueue(struct RingQueue *rq, const unsigned char *cdata, int n)
{
 int enqueued = 0;

 assert(rq != ((void*)0));
 assert(cdata != ((void*)0));
 assert(rq->length > 0);
 while (n > 0) {
  int m, q_avail;


  q_avail = rq->length - rq->wi;
  if (q_avail <= 0) {
   rq->wi = 0;
   q_avail = rq->length;
  }
  m = n;
  assert(q_avail > 0);
  if (m > q_avail)
   m = q_avail;

  memcpy(rq->queue + rq->wi, cdata, m);
  RING_QUEUE_ADVANCE_INDEX(rq, wi, m);
  cdata += m;
  enqueued += m;
  n -= m;
 }
 return enqueued;
}
