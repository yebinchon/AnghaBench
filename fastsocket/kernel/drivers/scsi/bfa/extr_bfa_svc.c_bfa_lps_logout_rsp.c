
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_lps_logout_rsp_s {scalar_t__ bfa_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_lps_s {int dummy; } ;
struct bfa_lps_mod_s {scalar_t__ num_lps; } ;


 struct bfa_lps_s* BFA_LPS_FROM_TAG (struct bfa_lps_mod_s*,scalar_t__) ;
 struct bfa_lps_mod_s* BFA_LPS_MOD (struct bfa_s*) ;
 int BFA_LPS_SM_FWRSP ;
 int WARN_ON (int) ;
 int bfa_sm_send_event (struct bfa_lps_s*,int ) ;

__attribute__((used)) static void
bfa_lps_logout_rsp(struct bfa_s *bfa, struct bfi_lps_logout_rsp_s *rsp)
{
 struct bfa_lps_mod_s *mod = BFA_LPS_MOD(bfa);
 struct bfa_lps_s *lps;

 WARN_ON(rsp->bfa_tag >= mod->num_lps);
 lps = BFA_LPS_FROM_TAG(mod, rsp->bfa_tag);

 bfa_sm_send_event(lps, BFA_LPS_SM_FWRSP);
}
