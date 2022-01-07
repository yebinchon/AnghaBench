
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int qos_flow_id; int qos_priority; } ;
struct TYPE_7__ {int qos_flow_id; int qos_priority; } ;
struct bfi_rport_qos_scn_s {TYPE_3__ new_qos_attr; TYPE_2__ old_qos_attr; } ;
struct TYPE_6__ {scalar_t__ fw_msg; } ;
struct bfa_rport_s {int rport_tag; int bfa; int rport_drv; TYPE_3__ qos_attr; TYPE_1__ event_arg; } ;
typedef enum bfa_rport_event { ____Placeholder_bfa_rport_event } bfa_rport_event ;







 void* be32_to_cpu (int) ;
 int bfa_cb_rport_qos_scn_flowid (int ,TYPE_2__,TYPE_3__) ;
 int bfa_cb_rport_qos_scn_prio (int ,TYPE_2__,TYPE_3__) ;
 int bfa_rport_send_fwdelete (struct bfa_rport_s*) ;
 int bfa_rport_send_fwspeed (struct bfa_rport_s*) ;
 int bfa_rport_sm_deleting ;
 int bfa_rport_sm_deleting_qfull ;
 int bfa_rport_sm_fwdelete ;
 int bfa_rport_sm_fwdelete_qfull ;
 int bfa_rport_sm_iocdisable ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_rport_s*,int ) ;
 int bfa_stats (struct bfa_rport_s*,int ) ;
 int bfa_trc (int ,int) ;
 int sm_on_del ;
 int sm_on_hwf ;
 int sm_on_off ;
 int sm_on_unexp ;

__attribute__((used)) static void
bfa_rport_sm_online(struct bfa_rport_s *rp, enum bfa_rport_event event)
{
 struct bfi_rport_qos_scn_s *qos_scn;

 bfa_trc(rp->bfa, rp->rport_tag);
 bfa_trc(rp->bfa, event);

 switch (event) {
 case 130:
  bfa_stats(rp, sm_on_off);
  if (bfa_rport_send_fwdelete(rp))
   bfa_sm_set_state(rp, bfa_rport_sm_fwdelete);
  else
   bfa_sm_set_state(rp, bfa_rport_sm_fwdelete_qfull);
  break;

 case 132:
  bfa_stats(rp, sm_on_del);
  if (bfa_rport_send_fwdelete(rp))
   bfa_sm_set_state(rp, bfa_rport_sm_deleting);
  else
   bfa_sm_set_state(rp, bfa_rport_sm_deleting_qfull);
  break;

 case 131:
  bfa_stats(rp, sm_on_hwf);
  bfa_sm_set_state(rp, bfa_rport_sm_iocdisable);
  break;

 case 128:
  bfa_rport_send_fwspeed(rp);
  break;

 case 129:
  qos_scn = (struct bfi_rport_qos_scn_s *) rp->event_arg.fw_msg;
  rp->qos_attr = qos_scn->new_qos_attr;
  bfa_trc(rp->bfa, qos_scn->old_qos_attr.qos_flow_id);
  bfa_trc(rp->bfa, qos_scn->new_qos_attr.qos_flow_id);
  bfa_trc(rp->bfa, qos_scn->old_qos_attr.qos_priority);
  bfa_trc(rp->bfa, qos_scn->new_qos_attr.qos_priority);

  qos_scn->old_qos_attr.qos_flow_id =
   be32_to_cpu(qos_scn->old_qos_attr.qos_flow_id);
  qos_scn->new_qos_attr.qos_flow_id =
   be32_to_cpu(qos_scn->new_qos_attr.qos_flow_id);

  if (qos_scn->old_qos_attr.qos_flow_id !=
   qos_scn->new_qos_attr.qos_flow_id)
   bfa_cb_rport_qos_scn_flowid(rp->rport_drv,
          qos_scn->old_qos_attr,
          qos_scn->new_qos_attr);
  if (qos_scn->old_qos_attr.qos_priority !=
   qos_scn->new_qos_attr.qos_priority)
   bfa_cb_rport_qos_scn_prio(rp->rport_drv,
        qos_scn->old_qos_attr,
        qos_scn->new_qos_attr);
  break;

 default:
  bfa_stats(rp, sm_on_unexp);
  bfa_sm_fault(rp->bfa, event);
 }
}
