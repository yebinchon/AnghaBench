
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {int ri; int wi; int length; scalar_t__ queue; } ;


 int RingQueue_GetLength (struct RingQueue*) ;
 int assert (int ) ;
 int memcpy (unsigned char*,scalar_t__,int) ;

int RingQueue_Dequeue(struct RingQueue *rq, unsigned char *dst, int len)
{
 int rql, toread;

 assert(rq != ((void*)0));
 assert(dst != ((void*)0));

 rql = RingQueue_GetLength(rq);
 if(!rql)
  return 0;


 if(len > rql)
  len = rql;

 toread = len;
 if(rq->ri > rq->wi) {

  int read = (toread < (rq->length - rq->ri)) ? toread : rq->length - rq->ri;
  memcpy(dst, rq->queue + rq->ri, read);
  toread -= read;
  dst += read;
  rq->ri = (rq->ri + read) & (rq->length-1);
 }
 if(toread) {

  memcpy(dst, rq->queue + rq->ri, toread);
  rq->ri = (rq->ri + toread) & (rq->length-1);
 }
 return len;
}
