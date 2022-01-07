
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int roles; } ;
struct ibmvfc_target {int add_rport; int kref; int logo_rcvd; TYPE_3__ ids; int need_login; } ;
struct TYPE_6__ {int status; } ;
struct ibmvfc_prli_svc_parms {int flags; int service_parms; int type; } ;
struct ibmvfc_process_login {int status; int error; TYPE_2__ common; struct ibmvfc_prli_svc_parms parms; } ;
struct ibmvfc_host {int work_wait_q; int discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_8__ {int retry; int logged_in; } ;
struct TYPE_5__ {struct ibmvfc_process_login prli; } ;


 int FC_PORT_ROLE_FCP_INITIATOR ;
 int FC_PORT_ROLE_FCP_TARGET ;
 int IBMVFC_DEFAULT_LOG_LEVEL ;




 int IBMVFC_PLOGI_REQUIRED ;
 int IBMVFC_PRLI_EST_IMG_PAIR ;
 int IBMVFC_PRLI_INITIATOR_FUNC ;
 int IBMVFC_PRLI_TARGET_FUNC ;
 int IBMVFC_SCSI_FCP_TYPE ;
 int IBMVFC_TGT_ACTION_DEL_RPORT ;
 int IBMVFC_TGT_ACTION_NONE ;
 int IBMVFC_VIOS_FAILURE ;
 int ibmvfc_free_event (struct ibmvfc_event*) ;
 int ibmvfc_get_cmd_error (int,int ) ;
 int ibmvfc_get_prli_rsp (int) ;
 int ibmvfc_release_tgt ;
 int ibmvfc_retry_cmd (int,int ) ;
 int ibmvfc_retry_tgt_init (struct ibmvfc_target*,int ) ;
 int ibmvfc_set_tgt_action (struct ibmvfc_target*,int ) ;
 int ibmvfc_tgt_send_plogi ;
 int ibmvfc_tgt_send_prli ;
 int kref_put (int *,int ) ;
 TYPE_4__* prli_rsp ;
 int tgt_dbg (struct ibmvfc_target*,char*,int ,int,int) ;
 int tgt_log (struct ibmvfc_target*,int,char*,int ,int,int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void ibmvfc_tgt_prli_done(struct ibmvfc_event *evt)
{
 struct ibmvfc_target *tgt = evt->tgt;
 struct ibmvfc_host *vhost = evt->vhost;
 struct ibmvfc_process_login *rsp = &evt->xfer_iu->prli;
 struct ibmvfc_prli_svc_parms *parms = &rsp->parms;
 u32 status = rsp->common.status;
 int index, level = IBMVFC_DEFAULT_LOG_LEVEL;

 vhost->discovery_threads--;
 ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_NONE);
 switch (status) {
 case 128:
  tgt_dbg(tgt, "Process Login succeeded: %X %02X %04X\n",
   parms->type, parms->flags, parms->service_parms);

  if (parms->type == IBMVFC_SCSI_FCP_TYPE) {
   index = ibmvfc_get_prli_rsp(parms->flags);
   if (prli_rsp[index].logged_in) {
    if (parms->flags & IBMVFC_PRLI_EST_IMG_PAIR) {
     tgt->need_login = 0;
     tgt->ids.roles = 0;
     if (parms->service_parms & IBMVFC_PRLI_TARGET_FUNC)
      tgt->ids.roles |= FC_PORT_ROLE_FCP_TARGET;
     if (parms->service_parms & IBMVFC_PRLI_INITIATOR_FUNC)
      tgt->ids.roles |= FC_PORT_ROLE_FCP_INITIATOR;
     tgt->add_rport = 1;
    } else
     ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
   } else if (prli_rsp[index].retry)
    ibmvfc_retry_tgt_init(tgt, ibmvfc_tgt_send_prli);
   else
    ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
  } else
   ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
  break;
 case 130:
  break;
 case 131:
  ibmvfc_retry_tgt_init(tgt, ibmvfc_tgt_send_prli);
  break;
 case 129:
 default:
  if ((rsp->status & IBMVFC_VIOS_FAILURE) && rsp->error == IBMVFC_PLOGI_REQUIRED)
   level += ibmvfc_retry_tgt_init(tgt, ibmvfc_tgt_send_plogi);
  else if (tgt->logo_rcvd)
   level += ibmvfc_retry_tgt_init(tgt, ibmvfc_tgt_send_plogi);
  else if (ibmvfc_retry_cmd(rsp->status, rsp->error))
   level += ibmvfc_retry_tgt_init(tgt, ibmvfc_tgt_send_prli);
  else
   ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);

  tgt_log(tgt, level, "Process Login failed: %s (%x:%x) rc=0x%02X\n",
   ibmvfc_get_cmd_error(rsp->status, rsp->error),
   rsp->status, rsp->error, status);
  break;
 };

 kref_put(&tgt->kref, ibmvfc_release_tgt);
 ibmvfc_free_event(evt);
 wake_up(&vhost->work_wait_q);
}
