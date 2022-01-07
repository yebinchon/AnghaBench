
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int dummy; } ;


 scalar_t__ PMU_KEYLARGO_BASED ;
 int PMU_POWER_CTRL ;
 int PMU_POW_IRLED ;
 int PMU_POW_OFF ;
 int PMU_POW_ON ;
 scalar_t__ pmu_kind ;
 int pmu_request (struct adb_request*,int *,int,int ,int) ;
 int pmu_wait_complete (struct adb_request*) ;
 int * vias ;

void
pmu_enable_irled(int on)
{
 struct adb_request req;

 if (vias == ((void*)0))
  return ;
 if (pmu_kind == PMU_KEYLARGO_BASED)
  return ;

 pmu_request(&req, ((void*)0), 2, PMU_POWER_CTRL, PMU_POW_IRLED |
     (on ? PMU_POW_ON : PMU_POW_OFF));
 pmu_wait_complete(&req);
}
