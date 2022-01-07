
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cidx; scalar_t__ size; int msn; int in_use; } ;
struct t4_wq {TYPE_1__ rq; } ;



__attribute__((used)) static inline void t4_rq_consume(struct t4_wq *wq)
{
 wq->rq.in_use--;
 wq->rq.msn++;
 if (++wq->rq.cidx == wq->rq.size)
  wq->rq.cidx = 0;
}
