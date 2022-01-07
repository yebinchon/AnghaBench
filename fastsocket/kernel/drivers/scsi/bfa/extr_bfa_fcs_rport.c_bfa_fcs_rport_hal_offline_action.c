
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct TYPE_4__ {int offlines; } ;
struct bfa_fcs_rport_s {int pid; int itnim; struct bfa_fcs_lport_s* port; int pwwn; TYPE_2__ stats; int bfa_rport; } ;
struct bfa_fcs_lport_s {TYPE_1__* fcs; } ;
struct TYPE_3__ {scalar_t__ bfad; } ;


 int BFA_FCS_PID_IS_WKA (int ) ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*,char*) ;
 int BFA_RPORT_AEN_DISCONNECT ;
 int BFA_RPORT_AEN_OFFLINE ;
 int BFA_STRING_32 ;
 scalar_t__ BFA_TRUE ;
 int KERN_ERR ;
 int KERN_INFO ;
 int bfa_fcs_itnim_rport_offline (int ) ;
 int bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 scalar_t__ bfa_fcs_lport_is_initiator (struct bfa_fcs_lport_s*) ;
 scalar_t__ bfa_fcs_lport_is_online (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_rpf_rport_offline (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_aen_post (struct bfa_fcs_rport_s*,int ,int *) ;
 int bfa_fcs_rport_fcs_offline_action (struct bfa_fcs_rport_s*) ;
 int bfa_log_level ;
 int wwn2str (char*,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_hal_offline_action(struct bfa_fcs_rport_s *rport)
{
 struct bfa_fcs_lport_s *port = rport->port;
 struct bfad_s *bfad = (struct bfad_s *)port->fcs->bfad;
 char lpwwn_buf[BFA_STRING_32];
 char rpwwn_buf[BFA_STRING_32];

 if (!rport->bfa_rport) {
  bfa_fcs_rport_fcs_offline_action(rport);
  return;
 }

 rport->stats.offlines++;

 wwn2str(lpwwn_buf, bfa_fcs_lport_get_pwwn(port));
 wwn2str(rpwwn_buf, rport->pwwn);
 if (!BFA_FCS_PID_IS_WKA(rport->pid)) {
  if (bfa_fcs_lport_is_online(rport->port) == BFA_TRUE) {
   BFA_LOG(KERN_ERR, bfad, bfa_log_level,
    "Remote port (WWN = %s) connectivity lost for "
    "logical port (WWN = %s)\n",
    rpwwn_buf, lpwwn_buf);
   bfa_fcs_rport_aen_post(rport,
    BFA_RPORT_AEN_DISCONNECT, ((void*)0));
  } else {
   BFA_LOG(KERN_INFO, bfad, bfa_log_level,
    "Remote port (WWN = %s) offlined by "
    "logical port (WWN = %s)\n",
    rpwwn_buf, lpwwn_buf);
   bfa_fcs_rport_aen_post(rport,
    BFA_RPORT_AEN_OFFLINE, ((void*)0));
  }
 }

 if (bfa_fcs_lport_is_initiator(port)) {
  bfa_fcs_itnim_rport_offline(rport->itnim);
  if (!BFA_FCS_PID_IS_WKA(rport->pid))
   bfa_fcs_rpf_rport_offline(rport);
 }
}
