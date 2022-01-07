
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int opcode; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct TYPE_6__ {TYPE_2__ srp; } ;
struct srp_event_struct {TYPE_3__ iu; struct ibmvscsi_host_data* hostdata; } ;
struct ibmvscsi_host_data {int dev; } ;


 int dev_err (int ,char*,int ) ;
 int ibmvscsi_reset_host (struct ibmvscsi_host_data*) ;

__attribute__((used)) static void ibmvscsi_timeout(struct srp_event_struct *evt_struct)
{
 struct ibmvscsi_host_data *hostdata = evt_struct->hostdata;

 dev_err(hostdata->dev, "Command timed out (%x). Resetting connection\n",
  evt_struct->iu.srp.cmd.opcode);

 ibmvscsi_reset_host(hostdata);
}
