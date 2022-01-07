
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_rport {int dummy; } ;
struct fcoe_ctlr {int dummy; } ;
struct TYPE_2__ {int * disc_stop_final; int * disc_stop; int * disc_start; int * disc_recv_req; } ;
struct fc_lport {scalar_t__ state; int rport_priv_size; int point_to_multipoint; TYPE_1__ tt; } ;
typedef enum fip_state { ____Placeholder_fip_state } fip_state ;


 int FIP_MODE_VN2VN ;
 scalar_t__ LPORT_ST_DISABLED ;
 scalar_t__ LPORT_ST_RESET ;
 int WARN_ON (int) ;
 int fc_disc_config (struct fc_lport*,void*) ;
 int * fcoe_ctlr_disc_recv ;
 int * fcoe_ctlr_disc_start ;
 int * fcoe_ctlr_disc_stop ;
 int * fcoe_ctlr_disc_stop_final ;

void fcoe_ctlr_mode_set(struct fc_lport *lport, struct fcoe_ctlr *fip,
   enum fip_state fip_mode)
{
 void *priv;

 WARN_ON(lport->state != LPORT_ST_RESET &&
  lport->state != LPORT_ST_DISABLED);

 if (fip_mode == FIP_MODE_VN2VN) {
  lport->rport_priv_size = sizeof(struct fcoe_rport);
  lport->point_to_multipoint = 1;
  lport->tt.disc_recv_req = fcoe_ctlr_disc_recv;
  lport->tt.disc_start = fcoe_ctlr_disc_start;
  lport->tt.disc_stop = fcoe_ctlr_disc_stop;
  lport->tt.disc_stop_final = fcoe_ctlr_disc_stop_final;
  priv = fip;
 } else {
  lport->rport_priv_size = 0;
  lport->point_to_multipoint = 0;
  lport->tt.disc_recv_req = ((void*)0);
  lport->tt.disc_start = ((void*)0);
  lport->tt.disc_stop = ((void*)0);
  lport->tt.disc_stop_final = ((void*)0);
  priv = lport;
 }

 fc_disc_config(lport, priv);
}
