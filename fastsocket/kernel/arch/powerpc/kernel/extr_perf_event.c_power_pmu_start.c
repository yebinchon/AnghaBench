
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int idx; int period_left; int sample_period; } ;
struct perf_event {int pmu; TYPE_1__ hw; } ;
typedef int s64 ;


 int PERF_EF_RELOAD ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 int local64_read (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 int write_pmc (int ,unsigned long) ;

__attribute__((used)) static void power_pmu_start(struct perf_event *event, int ef_flags)
{
 unsigned long flags;
 s64 left;
 unsigned long val;

 if (!event->hw.idx || !event->hw.sample_period)
  return;

 if (!(event->hw.state & PERF_HES_STOPPED))
  return;

 if (ef_flags & PERF_EF_RELOAD)
  WARN_ON_ONCE(!(event->hw.state & PERF_HES_UPTODATE));

 local_irq_save(flags);
 perf_pmu_disable(event->pmu);

 event->hw.state = 0;
 left = local64_read(&event->hw.period_left);

 val = 0;
 if (left < 0x80000000L)
  val = 0x80000000L - left;

 write_pmc(event->hw.idx, val);

 perf_event_update_userpage(event);
 perf_pmu_enable(event->pmu);
 local_irq_restore(flags);
}
