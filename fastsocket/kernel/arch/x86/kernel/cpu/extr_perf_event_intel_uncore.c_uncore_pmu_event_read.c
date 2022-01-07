
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct intel_uncore_box {int dummy; } ;


 struct intel_uncore_box* uncore_event_to_box (struct perf_event*) ;
 int uncore_perf_event_update (struct intel_uncore_box*,struct perf_event*) ;

__attribute__((used)) static void uncore_pmu_event_read(struct perf_event *event)
{
 struct intel_uncore_box *box = uncore_event_to_box(event);
 uncore_perf_event_update(box, event);
}
