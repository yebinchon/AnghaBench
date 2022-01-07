
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {int hrtimer; } ;


 int hrtimer_cancel (int *) ;

__attribute__((used)) static void uncore_pmu_cancel_hrtimer(struct intel_uncore_box *box)
{
 hrtimer_cancel(&box->hrtimer);
}
