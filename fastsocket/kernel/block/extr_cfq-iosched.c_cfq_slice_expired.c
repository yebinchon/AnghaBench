
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dummy; } ;
struct cfq_data {struct cfq_queue* active_queue; } ;


 int __cfq_slice_expired (struct cfq_data*,struct cfq_queue*,int) ;

__attribute__((used)) static inline void cfq_slice_expired(struct cfq_data *cfqd, bool timed_out)
{
 struct cfq_queue *cfqq = cfqd->active_queue;

 if (cfqq)
  __cfq_slice_expired(cfqd, cfqq, timed_out);
}
