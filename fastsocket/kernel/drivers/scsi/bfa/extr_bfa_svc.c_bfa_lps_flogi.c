
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* wwn_t ;
typedef int u8 ;
typedef int u16 ;
struct bfa_lps_s {int auth_en; int fdisc; void* nwwn; void* pwwn; int pdusz; int alpa; void* uarg; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_LPS_SM_LOGIN ;
 int bfa_sm_send_event (struct bfa_lps_s*,int ) ;

void
bfa_lps_flogi(struct bfa_lps_s *lps, void *uarg, u8 alpa, u16 pdusz,
 wwn_t pwwn, wwn_t nwwn, bfa_boolean_t auth_en)
{
 lps->uarg = uarg;
 lps->alpa = alpa;
 lps->pdusz = pdusz;
 lps->pwwn = pwwn;
 lps->nwwn = nwwn;
 lps->fdisc = BFA_FALSE;
 lps->auth_en = auth_en;
 bfa_sm_send_event(lps, BFA_LPS_SM_LOGIN);
}
