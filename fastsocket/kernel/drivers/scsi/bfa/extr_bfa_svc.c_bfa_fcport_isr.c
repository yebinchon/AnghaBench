
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


union bfi_fcport_i2h_msg_u {TYPE_12__* pstatsget_rsp; int trunk_scn; TYPE_11__* event; TYPE_5__* penable_rsp; struct bfi_msg_s* msg; } ;
struct TYPE_17__ {int msg_id; } ;
struct bfi_msg_s {TYPE_2__ mhdr; } ;
struct bfa_s {int dummy; } ;
struct TYPE_23__ {int qos_bw_op; int state; int qos_bw; } ;
struct TYPE_22__ {void* state; } ;
struct TYPE_21__ {int bb_cr_enabled; int qos_bw; int qos_enabled; int trunked; void* q_depth; void* path_tov; void* maxfrsize; } ;
struct TYPE_18__ {int state; } ;
struct TYPE_19__ {TYPE_3__ attr; } ;
struct TYPE_16__ {union bfi_fcport_i2h_msg_u i2hmsg; } ;
struct bfa_fcport_s {int stats_status; int timer; int statsclr_pending_q; int stats_pending_q; TYPE_8__ qos_attr; TYPE_7__ bbcr_attr; TYPE_6__ cfg; int msgtag; int use_flash_cfg; TYPE_4__ trunk; int stats_dma_ready; int sm; TYPE_1__ event_arg; } ;
struct TYPE_24__ {int qos_bw_op; } ;
struct TYPE_20__ {int msgtag; TYPE_6__ port_cfg; } ;
struct TYPE_15__ {int status; } ;
struct TYPE_13__ {TYPE_9__ qos_attr; int linkstate_rsn; int linkstate; } ;
struct TYPE_14__ {TYPE_10__ link_state; } ;


 void* BFA_BBCR_DISABLED ;
 void* BFA_BBCR_OFFLINE ;
 int BFA_FALSE ;
 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;
 int BFA_FCPORT_SM_DISABLE ;
 int BFA_FCPORT_SM_ENABLE ;
 int BFA_FCPORT_SM_FAA_MISCONFIG ;
 int BFA_FCPORT_SM_FWRSP ;
 int BFA_FCPORT_SM_LINKDOWN ;
 int BFA_FCPORT_SM_LINKUP ;
 int BFA_PORT_LINKSTATE_RSN_FAA_MISCONFIG ;
 int BFA_PORT_LINKUP ;
 int BFA_QOS_DISABLED ;
 int BFA_QOS_OFFLINE ;
 int BFA_STATUS_ETIMER ;
 int BFA_STATUS_OK ;
 int BFA_TRUE ;
 int BFA_TRUNK_DISABLED ;
 int BFA_TRUNK_OFFLINE ;
 int WARN_ON (int) ;
 int __bfa_cb_fcport_stats_clr (struct bfa_fcport_s*,int ) ;
 int __bfa_cb_fcport_stats_get (struct bfa_fcport_s*,int ) ;
 int bfa_sm_send_event (struct bfa_fcport_s*,int ) ;
 int bfa_sm_to_state (int ,int ) ;
 int bfa_timer_stop (int *) ;
 int bfa_trc (struct bfa_s*,int) ;
 int bfa_trunk_scn (struct bfa_fcport_s*,int ) ;
 void* cpu_to_be16 (void*) ;
 int hal_port_sm_table ;
 int list_empty (int *) ;

void
bfa_fcport_isr(struct bfa_s *bfa, struct bfi_msg_s *msg)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);
 union bfi_fcport_i2h_msg_u i2hmsg;

 i2hmsg.msg = msg;
 fcport->event_arg.i2hmsg = i2hmsg;

 bfa_trc(bfa, msg->mhdr.msg_id);
 bfa_trc(bfa, bfa_sm_to_state(hal_port_sm_table, fcport->sm));

 switch (msg->mhdr.msg_id) {
 case 132:
  if (fcport->msgtag == i2hmsg.penable_rsp->msgtag) {

   fcport->stats_dma_ready = BFA_TRUE;
   if (fcport->use_flash_cfg) {
    fcport->cfg = i2hmsg.penable_rsp->port_cfg;
    fcport->cfg.maxfrsize =
     cpu_to_be16(fcport->cfg.maxfrsize);
    fcport->cfg.path_tov =
     cpu_to_be16(fcport->cfg.path_tov);
    fcport->cfg.q_depth =
     cpu_to_be16(fcport->cfg.q_depth);

    if (fcport->cfg.trunked)
     fcport->trunk.attr.state =
      BFA_TRUNK_OFFLINE;
    else
     fcport->trunk.attr.state =
      BFA_TRUNK_DISABLED;
    fcport->qos_attr.qos_bw =
     i2hmsg.penable_rsp->port_cfg.qos_bw;
    fcport->use_flash_cfg = BFA_FALSE;
   }

   if (fcport->cfg.qos_enabled)
    fcport->qos_attr.state = BFA_QOS_OFFLINE;
   else
    fcport->qos_attr.state = BFA_QOS_DISABLED;

   fcport->qos_attr.qos_bw_op =
     i2hmsg.penable_rsp->port_cfg.qos_bw;

   if (fcport->cfg.bb_cr_enabled)
    fcport->bbcr_attr.state = BFA_BBCR_OFFLINE;
   else
    fcport->bbcr_attr.state = BFA_BBCR_DISABLED;

   bfa_sm_send_event(fcport, BFA_FCPORT_SM_FWRSP);
  }
  break;

 case 134:
  if (fcport->msgtag == i2hmsg.penable_rsp->msgtag)
   bfa_sm_send_event(fcport, BFA_FCPORT_SM_FWRSP);
  break;

 case 131:
  if (fcport->cfg.bb_cr_enabled)
   fcport->bbcr_attr.state = BFA_BBCR_OFFLINE;
  else
   fcport->bbcr_attr.state = BFA_BBCR_DISABLED;

  if (i2hmsg.event->link_state.linkstate == BFA_PORT_LINKUP)
   bfa_sm_send_event(fcport, BFA_FCPORT_SM_LINKUP);
  else {
   if (i2hmsg.event->link_state.linkstate_rsn ==
       BFA_PORT_LINKSTATE_RSN_FAA_MISCONFIG)
    bfa_sm_send_event(fcport,
        BFA_FCPORT_SM_FAA_MISCONFIG);
   else
    bfa_sm_send_event(fcport,
        BFA_FCPORT_SM_LINKDOWN);
  }
  fcport->qos_attr.qos_bw_op =
    i2hmsg.event->link_state.qos_attr.qos_bw_op;
  break;

 case 128:
  bfa_trunk_scn(fcport, i2hmsg.trunk_scn);
  break;

 case 129:



  if (list_empty(&fcport->stats_pending_q) ||
      (fcport->stats_status == BFA_STATUS_ETIMER))
   break;

  bfa_timer_stop(&fcport->timer);
  fcport->stats_status = i2hmsg.pstatsget_rsp->status;
  __bfa_cb_fcport_stats_get(fcport, BFA_TRUE);
  break;

 case 130:



  if (list_empty(&fcport->statsclr_pending_q) ||
      (fcport->stats_status == BFA_STATUS_ETIMER))
   break;

  bfa_timer_stop(&fcport->timer);
  fcport->stats_status = BFA_STATUS_OK;
  __bfa_cb_fcport_stats_clr(fcport, BFA_TRUE);
  break;

 case 133:
  bfa_sm_send_event(fcport, BFA_FCPORT_SM_ENABLE);
  break;

 case 135:
  bfa_sm_send_event(fcport, BFA_FCPORT_SM_DISABLE);
  break;

 default:
  WARN_ON(1);
 break;
 }
}
