
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int ioprio; } ;
struct cfq_data {int dummy; } ;


 int cfq_cfqq_sync (struct cfq_queue*) ;
 int cfq_prio_slice (struct cfq_data*,int ,int ) ;

__attribute__((used)) static inline int
cfq_prio_to_slice(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 return cfq_prio_slice(cfqd, cfq_cfqq_sync(cfqq), cfqq->ioprio);
}
