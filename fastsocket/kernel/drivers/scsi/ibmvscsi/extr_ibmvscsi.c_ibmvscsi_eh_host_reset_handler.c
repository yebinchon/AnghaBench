
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct ibmvscsi_host_data {int request_limit; int dev; } ;
struct TYPE_2__ {int host; } ;


 int FAILED ;
 unsigned long HZ ;
 int SUCCESS ;
 int atomic_read (int *) ;
 int dev_err (int ,char*) ;
 int ibmvscsi_reset_host (struct ibmvscsi_host_data*) ;
 unsigned long init_timeout ;
 unsigned long jiffies ;
 int msleep (int) ;
 struct ibmvscsi_host_data* shost_priv (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ibmvscsi_eh_host_reset_handler(struct scsi_cmnd *cmd)
{
 unsigned long wait_switch = 0;
 struct ibmvscsi_host_data *hostdata = shost_priv(cmd->device->host);

 dev_err(hostdata->dev, "Resetting connection due to error recovery\n");

 ibmvscsi_reset_host(hostdata);

 for (wait_switch = jiffies + (init_timeout * HZ);
      time_before(jiffies, wait_switch) &&
       atomic_read(&hostdata->request_limit) < 2;) {

  msleep(10);
 }

 if (atomic_read(&hostdata->request_limit) <= 0)
  return FAILED;

 return SUCCESS;
}
