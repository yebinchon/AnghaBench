
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int flags; int sp; int bp; int ip; } ;
struct perf_sample_data {int period; } ;
struct TYPE_4__ {int precise_ip; } ;
struct TYPE_3__ {int last_period; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; } ;
struct pebs_record_core {int sp; int bp; int ip; } ;


 int PERF_EFLAGS_EXACT ;
 scalar_t__ intel_pmu_pebs_fixup_ip (struct pt_regs*) ;
 int intel_pmu_save_and_restart (struct perf_event*) ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ) ;
 int x86_pmu_stop (struct perf_event*,int ) ;

__attribute__((used)) static void __intel_pmu_pebs_event(struct perf_event *event,
       struct pt_regs *iregs, void *__pebs)
{





 struct pebs_record_core *pebs = __pebs;
 struct perf_sample_data data;
 struct pt_regs regs;

 if (!intel_pmu_save_and_restart(event))
  return;

 perf_sample_data_init(&data, 0);
 data.period = event->hw.last_period;
 regs = *iregs;
 regs.ip = pebs->ip;
 regs.bp = pebs->bp;
 regs.sp = pebs->sp;

 if (event->attr.precise_ip > 1 && intel_pmu_pebs_fixup_ip(&regs))
  regs.flags |= PERF_EFLAGS_EXACT;
 else
  regs.flags &= ~PERF_EFLAGS_EXACT;

 if (perf_event_overflow(event, &data, &regs))
  x86_pmu_stop(event, 0);
}
