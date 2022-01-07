
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvscsi_host_data {int host; int dev; int request_limit; int queue; scalar_t__ reenable_crq; scalar_t__ reset_crq; } ;
struct TYPE_2__ {int (* reset_crq_queue ) (int *,struct ibmvscsi_host_data*) ;int (* send_crq ) (struct ibmvscsi_host_data*,int ,int ) ;int (* reenable_crq_queue ) (int *,struct ibmvscsi_host_data*) ;} ;


 int IBMVSCSI_CRQ_INIT ;
 int atomic_set (int *,int) ;
 int dev_err (int ,char*,char const*) ;
 TYPE_1__* ibmvscsi_ops ;
 int scsi_unblock_requests (int ) ;
 int smp_mb () ;
 int stub1 (int *,struct ibmvscsi_host_data*) ;
 int stub2 (struct ibmvscsi_host_data*,int ,int ) ;
 int stub3 (int *,struct ibmvscsi_host_data*) ;
 int stub4 (struct ibmvscsi_host_data*,int ,int ) ;
 int to_vio_dev (int ) ;
 int vio_enable_interrupts (int ) ;

__attribute__((used)) static void ibmvscsi_do_work(struct ibmvscsi_host_data *hostdata)
{
 int rc;
 const char *action = "reset";

 if (hostdata->reset_crq) {
  hostdata->reset_crq = 0;
  smp_mb();

  rc = ibmvscsi_ops->reset_crq_queue(&hostdata->queue, hostdata);
  if (!rc)
   rc = ibmvscsi_ops->send_crq(hostdata, IBMVSCSI_CRQ_INIT, 0);
  vio_enable_interrupts(to_vio_dev(hostdata->dev));
 } else if (hostdata->reenable_crq) {
  hostdata->reenable_crq = 0;
  smp_mb();
  action = "enable";
  rc = ibmvscsi_ops->reenable_crq_queue(&hostdata->queue, hostdata);
  if (!rc)
   rc = ibmvscsi_ops->send_crq(hostdata, IBMVSCSI_CRQ_INIT, 0);
 } else
  return;

 if (rc) {
  atomic_set(&hostdata->request_limit, -1);
  dev_err(hostdata->dev, "error after %s\n", action);
 }

 scsi_unblock_requests(hostdata->host);
}
