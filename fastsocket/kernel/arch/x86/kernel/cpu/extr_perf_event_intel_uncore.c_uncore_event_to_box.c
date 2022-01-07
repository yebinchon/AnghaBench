
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct intel_uncore_box {int dummy; } ;


 int smp_processor_id () ;
 int uncore_event_to_pmu (struct perf_event*) ;
 struct intel_uncore_box* uncore_pmu_to_box (int ,int ) ;

__attribute__((used)) static struct intel_uncore_box *uncore_event_to_box(struct perf_event *event)
{




 return uncore_pmu_to_box(uncore_event_to_pmu(event), smp_processor_id());
}
