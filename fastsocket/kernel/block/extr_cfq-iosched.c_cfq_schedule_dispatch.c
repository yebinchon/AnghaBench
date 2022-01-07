
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_data {int unplug_work; int queue; scalar_t__ busy_queues; } ;


 int cfq_log (struct cfq_data*,char*) ;
 int kblockd_schedule_work (int ,int *) ;

__attribute__((used)) static inline void cfq_schedule_dispatch(struct cfq_data *cfqd)
{
 if (cfqd->busy_queues) {
  cfq_log(cfqd, "schedule dispatch");
  kblockd_schedule_work(cfqd->queue, &cfqd->unplug_work);
 }
}
