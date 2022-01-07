
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int scn_online; } ;


 int BFA_FALSE ;
 int RPSM_EVENT_SCN_OFFLINE ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;

void
bfa_cb_rport_scn_no_dev(void *rport)
{
 struct bfa_fcs_rport_s *rp = rport;

 bfa_sm_send_event(rp, RPSM_EVENT_SCN_OFFLINE);
 rp->scn_online = BFA_FALSE;
}
