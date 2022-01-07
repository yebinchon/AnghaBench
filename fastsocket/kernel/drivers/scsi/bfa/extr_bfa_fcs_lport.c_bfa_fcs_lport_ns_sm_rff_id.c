
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bfa_fcs_lport_ns_s {TYPE_3__* port; int fcxp; int timer; } ;
typedef enum vport_ns_event { ____Placeholder_vport_ns_event } vport_ns_event ;
struct TYPE_8__ {int ns_retries; } ;
struct TYPE_7__ {int pwwn; } ;
struct TYPE_9__ {int fcs; TYPE_2__ stats; TYPE_1__ port_cfg; } ;


 int BFA_FCS_GET_HAL_FROM_PORT (TYPE_3__*) ;
 int BFA_FCS_RETRY_TIMEOUT ;
 int BFA_FCS_VPORT_IS_INITIATOR_MODE (TYPE_3__*) ;



 int __fcs_min_cfg (int ) ;
 int bfa_fcs_lport_ms_online (TYPE_3__*) ;
 int bfa_fcs_lport_ns_boot_target_disc (TYPE_3__*) ;
 int bfa_fcs_lport_ns_send_gid_ft (struct bfa_fcs_lport_ns_s*,int *) ;
 int bfa_fcs_lport_ns_sm_offline ;
 int bfa_fcs_lport_ns_sm_online ;
 int bfa_fcs_lport_ns_sm_rff_id_retry ;
 int bfa_fcs_lport_ns_sm_sending_gid_ft ;
 int bfa_fcs_lport_ns_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_ns_sm_rff_id(struct bfa_fcs_lport_ns_s *ns,
   enum vport_ns_event event)
{
 bfa_trc(ns->port->fcs, ns->port->port_cfg.pwwn);
 bfa_trc(ns->port->fcs, event);

 switch (event) {
 case 128:






  if (__fcs_min_cfg(ns->port->fcs)) {
   bfa_fcs_lport_ns_boot_target_disc(ns->port);
   bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_online);
   return;
  }





  if (BFA_FCS_VPORT_IS_INITIATOR_MODE(ns->port)) {
   bfa_sm_set_state(ns,
    bfa_fcs_lport_ns_sm_sending_gid_ft);
   bfa_fcs_lport_ns_send_gid_ft(ns, ((void*)0));
  }



  bfa_fcs_lport_ms_online(ns->port);
  break;

 case 129:



  bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_rff_id_retry);
  ns->port->stats.ns_retries++;
  bfa_timer_start(BFA_FCS_GET_HAL_FROM_PORT(ns->port),
        &ns->timer, bfa_fcs_lport_ns_timeout, ns,
        BFA_FCS_RETRY_TIMEOUT);
  break;

 case 130:
  bfa_sm_set_state(ns, bfa_fcs_lport_ns_sm_offline);
  bfa_fcxp_discard(ns->fcxp);
  break;

 default:
  bfa_sm_fault(ns->port->fcs, event);
 }
}
