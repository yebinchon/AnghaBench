
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int dummy; } ;


 int PMU_INT_ADB ;
 int PMU_INT_TICK ;
 scalar_t__ PMU_KEYLARGO_BASED ;
 int PMU_SET_INTR_MASK ;
 int PMU_SHUTDOWN ;
 int drop_interrupts ;
 int local_irq_disable () ;
 scalar_t__ pmu_kind ;
 int pmu_request (struct adb_request*,int *,int,int ,char,...) ;
 int pmu_set_server_mode (int ) ;
 int pmu_wait_complete (struct adb_request*) ;
 int * via ;

void
pmu_shutdown(void)
{
 struct adb_request req;

 if (via == ((void*)0))
  return;

 local_irq_disable();

 drop_interrupts = 1;

 if (pmu_kind != PMU_KEYLARGO_BASED) {
  pmu_request(&req, ((void*)0), 2, PMU_SET_INTR_MASK, PMU_INT_ADB |
      PMU_INT_TICK );
  pmu_wait_complete(&req);
 } else {



  pmu_set_server_mode(0);
 }

 pmu_request(&req, ((void*)0), 5, PMU_SHUTDOWN,
      'M', 'A', 'T', 'T');
 pmu_wait_complete(&req);
 for (;;)
  ;
}
