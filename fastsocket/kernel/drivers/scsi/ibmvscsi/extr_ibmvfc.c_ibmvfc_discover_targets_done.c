
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ibmvfc_host {int work_wait_q; int dev; int num_targets; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int status; } ;
struct ibmvfc_discover_targets {int error; int status; int num_written; TYPE_2__ common; } ;
struct TYPE_3__ {struct ibmvfc_discover_targets discover_targets; } ;


 int IBMVFC_DEFAULT_LOG_LEVEL ;
 int IBMVFC_HOST_ACTION_ALLOC_TGTS ;
 int IBMVFC_LINK_DEAD ;



 int dev_err (int ,char*,int) ;
 int ibmvfc_dbg (struct ibmvfc_host*,char*) ;
 int ibmvfc_free_event (struct ibmvfc_event*) ;
 int ibmvfc_get_cmd_error (int ,int ) ;
 int ibmvfc_link_down (struct ibmvfc_host*,int ) ;
 int ibmvfc_log (struct ibmvfc_host*,int,char*,int ,int ,int ) ;
 int ibmvfc_retry_host_init (struct ibmvfc_host*) ;
 int ibmvfc_set_host_action (struct ibmvfc_host*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void ibmvfc_discover_targets_done(struct ibmvfc_event *evt)
{
 struct ibmvfc_host *vhost = evt->vhost;
 struct ibmvfc_discover_targets *rsp = &evt->xfer_iu->discover_targets;
 u32 mad_status = rsp->common.status;
 int level = IBMVFC_DEFAULT_LOG_LEVEL;

 switch (mad_status) {
 case 128:
  ibmvfc_dbg(vhost, "Discover Targets succeeded\n");
  vhost->num_targets = rsp->num_written;
  ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_ALLOC_TGTS);
  break;
 case 129:
  level += ibmvfc_retry_host_init(vhost);
  ibmvfc_log(vhost, level, "Discover Targets failed: %s (%x:%x)\n",
      ibmvfc_get_cmd_error(rsp->status, rsp->error), rsp->status, rsp->error);
  break;
 case 130:
  break;
 default:
  dev_err(vhost->dev, "Invalid Discover Targets response: 0x%x\n", mad_status);
  ibmvfc_link_down(vhost, IBMVFC_LINK_DEAD);
  break;
 }

 ibmvfc_free_event(evt);
 wake_up(&vhost->work_wait_q);
}
