
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cqe {int dummy; } ;
struct t4_cq {size_t sw_cidx; struct t4_cqe* sw_queue; scalar_t__ sw_in_use; } ;



__attribute__((used)) static inline struct t4_cqe *t4_next_sw_cqe(struct t4_cq *cq)
{
 if (cq->sw_in_use)
  return &cq->sw_queue[cq->sw_cidx];
 return ((void*)0);
}
