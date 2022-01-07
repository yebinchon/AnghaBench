
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfq_queue {int slice_end; TYPE_1__* cfqg; } ;
struct cfq_io_context {int ttime_mean; int ttime_samples; } ;
struct cfq_data {struct cfq_io_context* active_cic; } ;
struct TYPE_2__ {int nr_cfqq; } ;


 scalar_t__ cfq_slice_used (struct cfq_queue*) ;
 int jiffies ;
 scalar_t__ sample_valid (int ) ;

__attribute__((used)) static bool cfq_should_wait_busy(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 struct cfq_io_context *cic = cfqd->active_cic;


 if (cfqq->cfqg->nr_cfqq > 1)
  return 0;

 if (cfq_slice_used(cfqq))
  return 1;


 if (cic && sample_valid(cic->ttime_samples)
     && (cfqq->slice_end - jiffies < cic->ttime_mean))
  return 1;
 if (cfqq->slice_end - jiffies == 1)
  return 1;

 return 0;
}
