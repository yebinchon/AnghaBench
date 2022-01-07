
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; } ;


 scalar_t__ idle ;
 scalar_t__ locked ;
 scalar_t__ pmu_state ;
 int via ;
 int via_pmu_interrupt (int ,int *) ;

void
pmu_wait_complete(struct adb_request *req)
{
 if (!via)
  return;
 while((pmu_state != idle && pmu_state != locked) || !req->complete)
  via_pmu_interrupt(0, ((void*)0));
}
