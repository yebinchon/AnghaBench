
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int slice_end; } ;


 scalar_t__ cfq_cfqq_slice_new (struct cfq_queue*) ;
 int jiffies ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static inline bool cfq_slice_used(struct cfq_queue *cfqq)
{
 if (cfq_cfqq_slice_new(cfqq))
  return 0;
 if (time_before(jiffies, cfqq->slice_end))
  return 0;

 return 1;
}
