
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ idx; int state; int sample_period; } ;
struct perf_event {int pmu; TYPE_1__ hw; } ;


 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int fsl_emb_pmu_read (struct perf_event*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 int write_pmc (scalar_t__,int ) ;

__attribute__((used)) static void fsl_emb_pmu_stop(struct perf_event *event, int ef_flags)
{
 unsigned long flags;

 if (event->hw.idx < 0 || !event->hw.sample_period)
  return;

 if (event->hw.state & PERF_HES_STOPPED)
  return;

 local_irq_save(flags);
 perf_pmu_disable(event->pmu);

 fsl_emb_pmu_read(event);
 event->hw.state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
 write_pmc(event->hw.idx, 0);

 perf_event_update_userpage(event);
 perf_pmu_enable(event->pmu);
 local_irq_restore(flags);
}
