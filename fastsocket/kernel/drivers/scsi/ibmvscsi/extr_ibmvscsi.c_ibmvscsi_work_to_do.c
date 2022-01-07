
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {scalar_t__ reenable_crq; scalar_t__ reset_crq; } ;


 scalar_t__ kthread_should_stop () ;

__attribute__((used)) static int ibmvscsi_work_to_do(struct ibmvscsi_host_data *hostdata)
{
 if (kthread_should_stop())
  return 1;
 else if (hostdata->reset_crq) {
  return 1;
 } else if (hostdata->reenable_crq) {
  return 1;
 }

 return 0;
}
