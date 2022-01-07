
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {scalar_t__ ioprio; } ;
struct cfq_data {int cfq_slice_async_rq; } ;


 int CFQ_PRIO_LISTS ;
 scalar_t__ IOPRIO_BE_NR ;
 int WARN_ON (int) ;

__attribute__((used)) static inline int
cfq_prio_to_maxrq(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 const int base_rq = cfqd->cfq_slice_async_rq;

 WARN_ON(cfqq->ioprio >= IOPRIO_BE_NR);

 return 2 * (base_rq + base_rq * (CFQ_PRIO_LISTS - 1 - cfqq->ioprio));
}
