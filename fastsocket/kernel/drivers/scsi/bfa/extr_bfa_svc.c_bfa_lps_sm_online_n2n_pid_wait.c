
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_lps_s {int bfa_tag; TYPE_1__* bfa; int wqe; } ;
typedef enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;
struct TYPE_3__ {int plog; } ;







 int BFA_PL_EID_FIP_FCF_CVL ;
 int BFA_PL_EID_LOGO ;
 int BFA_PL_MID_LPS ;
 int bfa_lps_cvl_event (struct bfa_lps_s*) ;
 int bfa_lps_send_set_n2n_pid (struct bfa_lps_s*) ;
 int bfa_lps_sm_init ;
 int bfa_lps_sm_logowait ;
 int bfa_lps_sm_online ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_lps_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_lps_sm_online_n2n_pid_wait(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
 bfa_trc(lps->bfa, lps->bfa_tag);
 bfa_trc(lps->bfa, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(lps, bfa_lps_sm_online);
  bfa_lps_send_set_n2n_pid(lps);
  break;

 case 131:
  bfa_sm_set_state(lps, bfa_lps_sm_logowait);
  bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
   BFA_PL_EID_LOGO, 0, "Logout");
  break;

 case 128:
  bfa_sm_set_state(lps, bfa_lps_sm_init);
  bfa_reqq_wcancel(&lps->wqe);


  bfa_lps_cvl_event(lps);
  bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
   BFA_PL_EID_FIP_FCF_CVL, 0, "FCF Clear Virt. Link Rx");
  break;

 case 130:
 case 132:
  bfa_sm_set_state(lps, bfa_lps_sm_init);
  bfa_reqq_wcancel(&lps->wqe);
  break;

 default:
  bfa_sm_fault(lps->bfa, event);
 }
}
