
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_lps_s {int bfa_tag; TYPE_1__* bfa; int wqe; int reqq; } ;
typedef enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;
struct TYPE_5__ {int plog; } ;







 int BFA_PL_EID_FIP_FCF_CVL ;
 int BFA_PL_EID_LOGO ;
 int BFA_PL_MID_LPS ;
 int bfa_lps_cvl_event (struct bfa_lps_s*) ;
 int bfa_lps_send_logout (struct bfa_lps_s*) ;
 int bfa_lps_send_set_n2n_pid (struct bfa_lps_s*) ;
 int bfa_lps_sm_init ;
 int bfa_lps_sm_logout ;
 int bfa_lps_sm_logowait ;
 int bfa_lps_sm_online_n2n_pid_wait ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;
 int bfa_reqq_full (TYPE_1__*,int ) ;
 int bfa_reqq_wait (TYPE_1__*,int ,int *) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_lps_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_lps_sm_online(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
 bfa_trc(lps->bfa, lps->bfa_tag);
 bfa_trc(lps->bfa, event);

 switch (event) {
 case 131:
  if (bfa_reqq_full(lps->bfa, lps->reqq)) {
   bfa_sm_set_state(lps, bfa_lps_sm_logowait);
   bfa_reqq_wait(lps->bfa, lps->reqq, &lps->wqe);
  } else {
   bfa_sm_set_state(lps, bfa_lps_sm_logout);
   bfa_lps_send_logout(lps);
  }
  bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
   BFA_PL_EID_LOGO, 0, "Logout");
  break;

 case 129:
  bfa_sm_set_state(lps, bfa_lps_sm_init);


  bfa_lps_cvl_event(lps);
  bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
   BFA_PL_EID_FIP_FCF_CVL, 0, "FCF Clear Virt. Link Rx");
  break;

 case 128:
  if (bfa_reqq_full(lps->bfa, lps->reqq)) {
   bfa_sm_set_state(lps, bfa_lps_sm_online_n2n_pid_wait);
   bfa_reqq_wait(lps->bfa, lps->reqq, &lps->wqe);
  } else
   bfa_lps_send_set_n2n_pid(lps);
                break;

 case 130:
 case 132:
  bfa_sm_set_state(lps, bfa_lps_sm_init);
  break;

 default:
  bfa_sm_fault(lps->bfa, event);
 }
}
