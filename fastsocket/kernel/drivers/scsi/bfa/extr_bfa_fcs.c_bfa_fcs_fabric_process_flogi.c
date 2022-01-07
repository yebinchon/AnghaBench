
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct fchs_s {int ox_id; int s_id; } ;
struct TYPE_6__ {int bbcred; scalar_t__ port_type; } ;
struct fc_logi_s {int port_name; TYPE_2__ csp; } ;
struct TYPE_7__ {int reply_oxid; int rem_port_wwn; } ;
struct TYPE_8__ {TYPE_3__ pn2n; } ;
struct bfa_fcs_lport_s {TYPE_4__ port_topo; } ;
struct TYPE_5__ {int flogi_rejected; int flogi_rcvd; } ;
struct bfa_fcs_fabric_s {int bb_credit; TYPE_1__ stats; int fcs; struct bfa_fcs_lport_s bport; } ;


 int BFA_FCS_FABRIC_SM_NO_FABRIC ;
 int be16_to_cpu (int ) ;
 int bfa_fcs_fabric_send_flogi_acc (struct bfa_fcs_fabric_s*) ;
 int bfa_sm_send_event (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcs_fabric_process_flogi(struct bfa_fcs_fabric_s *fabric,
   struct fchs_s *fchs, u16 len)
{
 struct fc_logi_s *flogi = (struct fc_logi_s *) (fchs + 1);
 struct bfa_fcs_lport_s *bport = &fabric->bport;

 bfa_trc(fabric->fcs, fchs->s_id);

 fabric->stats.flogi_rcvd++;



 if (flogi->csp.port_type) {



  bfa_trc(fabric->fcs, flogi->port_name);
  fabric->stats.flogi_rejected++;
  return;
 }

 fabric->bb_credit = be16_to_cpu(flogi->csp.bbcred);
 bport->port_topo.pn2n.rem_port_wwn = flogi->port_name;
 bport->port_topo.pn2n.reply_oxid = fchs->ox_id;




 bfa_fcs_fabric_send_flogi_acc(fabric);
 bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_NO_FABRIC);
}
