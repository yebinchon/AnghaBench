
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {int hrtimer; } ;


 int HRTIMER_MODE_REL_PINNED ;
 int UNCORE_PMU_HRTIMER_INTERVAL ;
 int __hrtimer_start_range_ns (int *,int ,int ,int ,int ) ;
 int ns_to_ktime (int ) ;

__attribute__((used)) static void uncore_pmu_start_hrtimer(struct intel_uncore_box *box)
{
 __hrtimer_start_range_ns(&box->hrtimer,
   ns_to_ktime(UNCORE_PMU_HRTIMER_INTERVAL), 0,
   HRTIMER_MODE_REL_PINNED, 0);
}
