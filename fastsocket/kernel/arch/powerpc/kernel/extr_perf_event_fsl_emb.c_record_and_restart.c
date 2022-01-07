
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int period; } ;
struct TYPE_2__ {unsigned long sample_period; int state; int last_period; int period_left; int prev_count; int idx; } ;
struct perf_event {TYPE_1__ hw; int count; } ;
typedef unsigned long s64 ;


 int PERF_HES_STOPPED ;
 int fsl_emb_pmu_stop (struct perf_event*,int ) ;
 int local64_add (unsigned long,int *) ;
 unsigned long local64_read (int *) ;
 int local64_set (int *,unsigned long) ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ) ;
 int write_pmc (int ,unsigned long) ;

__attribute__((used)) static void record_and_restart(struct perf_event *event, unsigned long val,
          struct pt_regs *regs)
{
 u64 period = event->hw.sample_period;
 s64 prev, delta, left;
 int record = 0;

 if (event->hw.state & PERF_HES_STOPPED) {
  write_pmc(event->hw.idx, 0);
  return;
 }


 prev = local64_read(&event->hw.prev_count);
 delta = (val - prev) & 0xfffffffful;
 local64_add(delta, &event->count);





 val = 0;
 left = local64_read(&event->hw.period_left) - delta;
 if (period) {
  if (left <= 0) {
   left += period;
   if (left <= 0)
    left = period;
   record = 1;
  }
  if (left < 0x80000000LL)
   val = 0x80000000LL - left;
 }

 write_pmc(event->hw.idx, val);
 local64_set(&event->hw.prev_count, val);
 local64_set(&event->hw.period_left, left);
 perf_event_update_userpage(event);




 if (record) {
  struct perf_sample_data data;

  perf_sample_data_init(&data, 0);
  data.period = event->hw.last_period;

  if (perf_event_overflow(event, &data, regs))
   fsl_emb_pmu_stop(event, 0);
 }
}
