
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


union bfi_rport_i2h_msg_u {TYPE_5__* lip_scn; TYPE_4__* qos_scn_evt; TYPE_2__* delete_rsp; TYPE_1__* create_rsp; struct bfi_msg_s* msg; } ;
struct TYPE_12__ {int msg_id; } ;
struct bfi_msg_s {TYPE_6__ mhdr; } ;
struct bfa_s {int dummy; } ;
struct TYPE_9__ {TYPE_4__* fw_msg; } ;
struct bfa_rport_s {int rport_drv; TYPE_3__ event_arg; int qos_attr; int fw_handle; } ;
struct TYPE_11__ {int bfa_handle; int loop_info; } ;
struct TYPE_10__ {int bfa_handle; } ;
struct TYPE_8__ {int status; int bfa_handle; } ;
struct TYPE_7__ {int status; int qos_attr; int fw_handle; int bfa_handle; } ;


 int BFA_FCPORT_MOD (struct bfa_s*) ;
 struct bfa_rport_s* BFA_RPORT_FROM_TAG (struct bfa_s*,int ) ;
 int BFA_RPORT_SM_FWRSP ;
 int BFA_RPORT_SM_QOS_SCN ;
 int BFA_STATUS_OK ;






 int WARN_ON (int) ;
 int bfa_cb_rport_scn_no_dev (int ) ;
 int bfa_cb_rport_scn_offline (struct bfa_s*) ;
 int bfa_cb_rport_scn_online (struct bfa_s*) ;
 int bfa_fcport_update_loop_info (int ,int *) ;
 int bfa_sm_send_event (struct bfa_rport_s*,int ) ;
 int bfa_trc (struct bfa_s*,int) ;

void
bfa_rport_isr(struct bfa_s *bfa, struct bfi_msg_s *m)
{
 union bfi_rport_i2h_msg_u msg;
 struct bfa_rport_s *rp;

 bfa_trc(bfa, m->mhdr.msg_id);

 msg.msg = m;

 switch (m->mhdr.msg_id) {
 case 133:
  rp = BFA_RPORT_FROM_TAG(bfa, msg.create_rsp->bfa_handle);
  rp->fw_handle = msg.create_rsp->fw_handle;
  rp->qos_attr = msg.create_rsp->qos_attr;
  WARN_ON(msg.create_rsp->status != BFA_STATUS_OK);
  bfa_sm_send_event(rp, BFA_RPORT_SM_FWRSP);
  break;

 case 132:
  rp = BFA_RPORT_FROM_TAG(bfa, msg.delete_rsp->bfa_handle);
  WARN_ON(msg.delete_rsp->status != BFA_STATUS_OK);
  bfa_sm_send_event(rp, BFA_RPORT_SM_FWRSP);
  break;

 case 128:
  rp = BFA_RPORT_FROM_TAG(bfa, msg.qos_scn_evt->bfa_handle);
  rp->event_arg.fw_msg = msg.qos_scn_evt;
  bfa_sm_send_event(rp, BFA_RPORT_SM_QOS_SCN);
  break;

 case 130:
  bfa_fcport_update_loop_info(BFA_FCPORT_MOD(bfa),
    &msg.lip_scn->loop_info);
  bfa_cb_rport_scn_online(bfa);
  break;

 case 131:
  bfa_cb_rport_scn_offline(bfa);
  break;

 case 129:
  rp = BFA_RPORT_FROM_TAG(bfa, msg.lip_scn->bfa_handle);
  bfa_cb_rport_scn_no_dev(rp->rport_drv);
  break;

 default:
  bfa_trc(bfa, m->mhdr.msg_id);
  WARN_ON(1);
 }
}
