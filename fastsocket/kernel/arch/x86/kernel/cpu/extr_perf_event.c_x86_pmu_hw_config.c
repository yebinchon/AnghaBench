
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int precise_ip; scalar_t__ type; int config; int exclude_kernel; int exclude_user; } ;
struct TYPE_4__ {int config; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; } ;
struct TYPE_6__ {scalar_t__ lbr_nr; scalar_t__ pebs_active; } ;


 int ARCH_PERFMON_EVENTSEL_INT ;
 int ARCH_PERFMON_EVENTSEL_OS ;
 int ARCH_PERFMON_EVENTSEL_USR ;
 int EOPNOTSUPP ;
 scalar_t__ PERF_TYPE_RAW ;
 int X86_RAW_EVENT_MASK ;
 TYPE_3__ x86_pmu ;
 int x86_setup_perfctr (struct perf_event*) ;

int x86_pmu_hw_config(struct perf_event *event)
{
 if (event->attr.precise_ip) {
  int precise = 0;


  if (x86_pmu.pebs_active) {
   precise++;


   if (x86_pmu.lbr_nr)
    precise++;
  }

  if (event->attr.precise_ip > precise)
   return -EOPNOTSUPP;
 }





 event->hw.config = ARCH_PERFMON_EVENTSEL_INT;




 if (!event->attr.exclude_user)
  event->hw.config |= ARCH_PERFMON_EVENTSEL_USR;
 if (!event->attr.exclude_kernel)
  event->hw.config |= ARCH_PERFMON_EVENTSEL_OS;

 if (event->attr.type == PERF_TYPE_RAW)
  event->hw.config |= event->attr.config & X86_RAW_EVENT_MASK;

 return x86_setup_perfctr(event);
}
