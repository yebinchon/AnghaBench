
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int dispatched; int slice_end; } ;
struct cfq_data {int cfq_slice_idle; } ;


 scalar_t__ cfq_cfqq_slice_new (struct cfq_queue*) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,int ) ;

__attribute__((used)) static inline bool cfq_slice_used_soon(struct cfq_data *cfqd,
 struct cfq_queue *cfqq)
{

 if (cfq_cfqq_slice_new(cfqq))
  return 1;
 if (time_after(jiffies + cfqd->cfq_slice_idle * cfqq->dispatched,
  cfqq->slice_end))
  return 1;

 return 0;
}
