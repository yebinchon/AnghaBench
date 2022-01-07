
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PMU_UNKNOWN ;
 scalar_t__ pmu_kind ;

int
pmu_present(void)
{
 return (pmu_kind != PMU_UNKNOWN);
}
