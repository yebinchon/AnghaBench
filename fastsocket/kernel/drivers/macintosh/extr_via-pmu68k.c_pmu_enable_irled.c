
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; } ;


 int PMU_POWER_CTRL ;
 int PMU_POW_IRLED ;
 int PMU_POW_OFF ;
 int PMU_POW_ON ;
 int pmu_poll () ;
 int pmu_request (struct adb_request*,int *,int,int ,int) ;

void
pmu_enable_irled(int on)
{
 struct adb_request req;

 pmu_request(&req, ((void*)0), 2, PMU_POWER_CTRL, PMU_POW_IRLED |
     (on ? PMU_POW_ON : PMU_POW_OFF));
 while (!req.complete)
  pmu_poll();
}
