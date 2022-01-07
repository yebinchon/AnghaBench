
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; } ;


 int PMU_INT_ADB ;
 int PMU_INT_TICK ;
 scalar_t__ PMU_KEYLARGO_BASED ;
 int PMU_RESET ;
 int PMU_SET_INTR_MASK ;
 int drop_interrupts ;
 int local_irq_disable () ;
 scalar_t__ pmu_kind ;
 int pmu_poll () ;
 int pmu_request (struct adb_request*,int *,int,int ,...) ;
 int pmu_wait_complete (struct adb_request*) ;
 int * via ;

void
pmu_restart(void)
{
 struct adb_request req;

 if (via == ((void*)0))
  return;

 local_irq_disable();

 drop_interrupts = 1;

 if (pmu_kind != PMU_KEYLARGO_BASED) {
  pmu_request(&req, ((void*)0), 2, PMU_SET_INTR_MASK, PMU_INT_ADB |
      PMU_INT_TICK );
  while(!req.complete)
   pmu_poll();
 }

 pmu_request(&req, ((void*)0), 1, PMU_RESET);
 pmu_wait_complete(&req);
 for (;;)
  ;
}
