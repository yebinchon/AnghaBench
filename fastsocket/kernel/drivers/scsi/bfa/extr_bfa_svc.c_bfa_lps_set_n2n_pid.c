
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bfa_lps_s {int lp_pid; int bfa; int bfa_tag; } ;


 int BFA_LPS_SM_SET_N2N_PID ;
 int bfa_sm_send_event (struct bfa_lps_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_lps_set_n2n_pid(struct bfa_lps_s *lps, uint32_t n2n_pid)
{
 bfa_trc(lps->bfa, lps->bfa_tag);
 bfa_trc(lps->bfa, n2n_pid);

 lps->lp_pid = n2n_pid;
 bfa_sm_send_event(lps, BFA_LPS_SM_SET_N2N_PID);
}
