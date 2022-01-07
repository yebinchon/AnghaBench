
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cq {scalar_t__ sw_pidx; scalar_t__ size; int sw_in_use; } ;



__attribute__((used)) static inline void t4_swcq_produce(struct t4_cq *cq)
{
 cq->sw_in_use++;
 if (++cq->sw_pidx == cq->size)
  cq->sw_pidx = 0;
}
