
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_lps_s {int qe; scalar_t__ lp_pid; int bfa; } ;
struct bfa_lps_mod_s {int lps_free_q; } ;


 struct bfa_lps_mod_s* BFA_LPS_MOD (int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void
bfa_lps_free(struct bfa_lps_s *lps)
{
 struct bfa_lps_mod_s *mod = BFA_LPS_MOD(lps->bfa);

 lps->lp_pid = 0;
 list_del(&lps->qe);
 list_add_tail(&lps->qe, &mod->lps_free_q);
}
