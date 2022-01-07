
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct srp_event_struct {TYPE_4__* xfer_iu; struct ibmvscsi_host_data* hostdata; } ;
struct ibmvscsi_host_data {int host; int request_limit; scalar_t__ client_migrated; int dev; } ;
struct TYPE_6__ {int opcode; int req_lim_delta; } ;
struct TYPE_5__ {int reason; } ;
struct TYPE_7__ {TYPE_2__ login_rsp; TYPE_1__ login_rej; } ;
struct TYPE_8__ {TYPE_3__ srp; } ;




 int atomic_set (int *,int) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,...) ;
 int scsi_unblock_requests (int ) ;

__attribute__((used)) static void login_rsp(struct srp_event_struct *evt_struct)
{
 struct ibmvscsi_host_data *hostdata = evt_struct->hostdata;
 switch (evt_struct->xfer_iu->srp.login_rsp.opcode) {
 case 128:
  break;
 case 129:
  dev_info(hostdata->dev, "SRP_LOGIN_REJ reason %u\n",
    evt_struct->xfer_iu->srp.login_rej.reason);

  atomic_set(&hostdata->request_limit, -1);
  return;
 default:
  dev_err(hostdata->dev, "Invalid login response typecode 0x%02x!\n",
   evt_struct->xfer_iu->srp.login_rsp.opcode);

  atomic_set(&hostdata->request_limit, -1);
  return;
 }

 dev_info(hostdata->dev, "SRP_LOGIN succeeded\n");
 hostdata->client_migrated = 0;





 atomic_set(&hostdata->request_limit,
     evt_struct->xfer_iu->srp.login_rsp.req_lim_delta);


 scsi_unblock_requests(hostdata->host);
}
