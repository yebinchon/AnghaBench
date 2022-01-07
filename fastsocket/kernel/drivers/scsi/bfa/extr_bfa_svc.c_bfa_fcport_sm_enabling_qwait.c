
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_fcport_s {TYPE_1__* bfa; int reqq_wait; int pwwn; } ;
typedef enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_3__ {int plog; scalar_t__ bfad; } ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*) ;
 int BFA_PL_EID_PORT_DISABLE ;
 int BFA_PL_MID_HAL ;
 int BFA_PORT_AEN_DISABLE ;
 int BFA_PORT_AEN_DISCONNECT ;
 int BFA_STRING_32 ;
 int KERN_INFO ;
 int bfa_fcport_aen_post (struct bfa_fcport_s*,int ) ;
 int bfa_fcport_reset_linkinfo (struct bfa_fcport_s*) ;
 int bfa_fcport_send_enable (struct bfa_fcport_s*) ;
 int bfa_fcport_sm_disabled ;
 int bfa_fcport_sm_enabling ;
 int bfa_fcport_sm_faa_misconfig ;
 int bfa_fcport_sm_iocdown ;
 int bfa_fcport_sm_stopped ;
 int bfa_log_level ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;
 int wwn2str (char*,int ) ;

__attribute__((used)) static void
bfa_fcport_sm_enabling_qwait(struct bfa_fcport_s *fcport,
    enum bfa_fcport_sm_event event)
{
 char pwwn_buf[BFA_STRING_32];
 struct bfad_s *bfad = (struct bfad_s *)fcport->bfa->bfad;
 bfa_trc(fcport->bfa, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(fcport, bfa_fcport_sm_enabling);
  bfa_fcport_send_enable(fcport);
  break;

 case 128:
  bfa_reqq_wcancel(&fcport->reqq_wait);
  bfa_sm_set_state(fcport, bfa_fcport_sm_stopped);
  break;

 case 134:



  break;

 case 135:




  bfa_sm_set_state(fcport, bfa_fcport_sm_disabled);
  bfa_reqq_wcancel(&fcport->reqq_wait);
  bfa_plog_str(fcport->bfa->plog, BFA_PL_MID_HAL,
    BFA_PL_EID_PORT_DISABLE, 0, "Port Disable");
  wwn2str(pwwn_buf, fcport->pwwn);
  BFA_LOG(KERN_INFO, bfad, bfa_log_level,
   "Base port disabled: WWN = %s\n", pwwn_buf);
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISABLE);
  break;

 case 130:
 case 131:




  break;

 case 132:
  bfa_reqq_wcancel(&fcport->reqq_wait);
  bfa_sm_set_state(fcport, bfa_fcport_sm_iocdown);
  break;

 case 133:
  bfa_fcport_reset_linkinfo(fcport);
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISCONNECT);
  bfa_sm_set_state(fcport, bfa_fcport_sm_faa_misconfig);
  break;

 default:
  bfa_sm_fault(fcport->bfa, event);
 }
}
