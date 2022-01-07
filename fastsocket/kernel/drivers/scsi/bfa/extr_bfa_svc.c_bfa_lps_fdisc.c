
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* wwn_t ;
typedef int u16 ;
struct bfa_lps_s {int auth_en; int fdisc; void* nwwn; void* pwwn; int pdusz; scalar_t__ alpa; void* uarg; } ;


 int BFA_FALSE ;
 int BFA_LPS_SM_LOGIN ;
 int BFA_TRUE ;
 int bfa_sm_send_event (struct bfa_lps_s*,int ) ;

void
bfa_lps_fdisc(struct bfa_lps_s *lps, void *uarg, u16 pdusz, wwn_t pwwn,
 wwn_t nwwn)
{
 lps->uarg = uarg;
 lps->alpa = 0;
 lps->pdusz = pdusz;
 lps->pwwn = pwwn;
 lps->nwwn = nwwn;
 lps->fdisc = BFA_TRUE;
 lps->auth_en = BFA_FALSE;
 bfa_sm_send_event(lps, BFA_LPS_SM_LOGIN);
}
