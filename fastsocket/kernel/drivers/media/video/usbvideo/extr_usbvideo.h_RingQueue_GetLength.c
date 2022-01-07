
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {int wi; int ri; int length; } ;



__attribute__((used)) static inline int RingQueue_GetLength(const struct RingQueue *rq)
{
 return (rq->wi - rq->ri + rq->length) & (rq->length-1);
}
