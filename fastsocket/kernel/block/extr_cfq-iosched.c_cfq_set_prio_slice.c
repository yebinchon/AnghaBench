
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {void* slice_end; unsigned int allocated_slice; void* slice_start; int cfqg; } ;
struct cfq_data {unsigned int* cfq_slice; int cfq_slice_idle; scalar_t__ cfq_latency; } ;


 int cfq_class_rt (struct cfq_queue*) ;
 unsigned int cfq_group_get_avg_queues (struct cfq_data*,int ,int ) ;
 unsigned int cfq_group_slice (struct cfq_data*,int ) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*,void*) ;
 unsigned int cfq_prio_to_slice (struct cfq_data*,struct cfq_queue*) ;
 void* jiffies ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static inline void
cfq_set_prio_slice(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 unsigned slice = cfq_prio_to_slice(cfqd, cfqq);
 if (cfqd->cfq_latency) {




  unsigned iq = cfq_group_get_avg_queues(cfqd, cfqq->cfqg,
      cfq_class_rt(cfqq));
  unsigned sync_slice = cfqd->cfq_slice[1];
  unsigned expect_latency = sync_slice * iq;
  unsigned group_slice = cfq_group_slice(cfqd, cfqq->cfqg);

  if (expect_latency > group_slice) {
   unsigned base_low_slice = 2 * cfqd->cfq_slice_idle;


   unsigned low_slice =
    min(slice, base_low_slice * slice / sync_slice);


   slice = max(slice * group_slice / expect_latency,
        low_slice);
  }
 }
 cfqq->slice_start = jiffies;
 cfqq->slice_end = jiffies + slice;
 cfqq->allocated_slice = slice;
 cfq_log_cfqq(cfqd, cfqq, "set_slice=%lu", cfqq->slice_end - jiffies);
}
