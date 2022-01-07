
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* idx; } ;
struct TYPE_5__ {void* idx; } ;
struct TYPE_7__ {int idx; int last_cpu; unsigned long long last_tag; TYPE_2__ branch_reg; TYPE_1__ extra_reg; } ;
struct perf_event {TYPE_3__ hw; int destroy; } ;
struct TYPE_8__ {int (* hw_config ) (struct perf_event*) ;} ;


 int EBUSY ;
 int ENODEV ;
 void* EXTRA_REG_NONE ;
 int active_events ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 int hw_perf_event_destroy ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmc_reserve_mutex ;
 int reserve_ds_buffers () ;
 int reserve_pmc_hardware () ;
 int stub1 (struct perf_event*) ;
 TYPE_4__ x86_pmu ;
 int x86_pmu_initialized () ;

__attribute__((used)) static int __x86_pmu_event_init(struct perf_event *event)
{
 int err;

 if (!x86_pmu_initialized())
  return -ENODEV;

 err = 0;
 if (!atomic_inc_not_zero(&active_events)) {
  mutex_lock(&pmc_reserve_mutex);
  if (atomic_read(&active_events) == 0) {
   if (!reserve_pmc_hardware())
    err = -EBUSY;
   else
    reserve_ds_buffers();
  }
  if (!err)
   atomic_inc(&active_events);
  mutex_unlock(&pmc_reserve_mutex);
 }
 if (err)
  return err;

 event->destroy = hw_perf_event_destroy;

 event->hw.idx = -1;
 event->hw.last_cpu = -1;
 event->hw.last_tag = ~0ULL;


 event->hw.extra_reg.idx = EXTRA_REG_NONE;


 event->hw.extra_reg.idx = EXTRA_REG_NONE;
 event->hw.branch_reg.idx = EXTRA_REG_NONE;

 return x86_pmu.hw_config(event);
}
