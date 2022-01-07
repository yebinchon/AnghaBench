
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RingQueue {int length; } ;


 int RingQueue_GetLength (struct RingQueue const*) ;

__attribute__((used)) static inline int RingQueue_GetFreeSpace(const struct RingQueue *rq)
{
 return rq->length - RingQueue_GetLength(rq);
}
