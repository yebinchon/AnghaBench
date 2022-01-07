
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct TYPE_4__ {int onlines; } ;
struct bfa_fcs_rport_s {int pid; int pwwn; int itnim; int fcs; TYPE_2__ stats; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {TYPE_1__* fcs; } ;
struct TYPE_3__ {scalar_t__ bfad; } ;


 int BFA_FCS_PID_IS_WKA (int ) ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*,char*) ;
 int BFA_RPORT_AEN_ONLINE ;
 int BFA_STRING_32 ;
 int KERN_INFO ;
 int bfa_fcs_itnim_brp_online (int ) ;
 int bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 scalar_t__ bfa_fcs_lport_is_initiator (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_rpf_rport_online (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_aen_post (struct bfa_fcs_rport_s*,int ,int *) ;
 int bfa_log_level ;
 int bfa_sm_fault (int ,int ) ;
 int bfa_trc (int ,int ) ;
 int wwn2str (char*,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_hal_online_action(struct bfa_fcs_rport_s *rport)
{
 struct bfa_fcs_lport_s *port = rport->port;
 struct bfad_s *bfad = (struct bfad_s *)port->fcs->bfad;
 char lpwwn_buf[BFA_STRING_32];
 char rpwwn_buf[BFA_STRING_32];

 rport->stats.onlines++;

 if ((!rport->pid) || (!rport->pwwn)) {
  bfa_trc(rport->fcs, rport->pid);
  bfa_sm_fault(rport->fcs, rport->pid);
 }

 if (bfa_fcs_lport_is_initiator(port)) {
  bfa_fcs_itnim_brp_online(rport->itnim);
  if (!BFA_FCS_PID_IS_WKA(rport->pid))
   bfa_fcs_rpf_rport_online(rport);
 };

 wwn2str(lpwwn_buf, bfa_fcs_lport_get_pwwn(port));
 wwn2str(rpwwn_buf, rport->pwwn);
 if (!BFA_FCS_PID_IS_WKA(rport->pid)) {
  BFA_LOG(KERN_INFO, bfad, bfa_log_level,
  "Remote port (WWN = %s) online for logical port (WWN = %s)\n",
  rpwwn_buf, lpwwn_buf);
  bfa_fcs_rport_aen_post(rport, BFA_RPORT_AEN_ONLINE, ((void*)0));
 }
}
