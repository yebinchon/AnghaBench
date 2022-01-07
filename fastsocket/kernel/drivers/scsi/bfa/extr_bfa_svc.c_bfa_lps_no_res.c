
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct list_head {int qe; int status; int bfa_tag; struct bfa_s* bfa; } ;
struct bfa_s {int dummy; } ;
struct bfa_lps_s {int qe; int status; int bfa_tag; struct bfa_s* bfa; } ;
struct bfa_lps_mod_s {int lps_active_q; } ;


 struct bfa_lps_mod_s* BFA_LPS_MOD (struct bfa_s*) ;
 int BFA_LPS_SM_FWRSP ;
 struct list_head* bfa_q_next (struct list_head*) ;
 int bfa_sm_send_event (struct list_head*,int ) ;
 int bfa_trc (struct bfa_s*,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void
bfa_lps_no_res(struct bfa_lps_s *first_lps, u8 count)
{
 struct bfa_s *bfa = first_lps->bfa;
 struct bfa_lps_mod_s *mod = BFA_LPS_MOD(bfa);
 struct list_head *qe, *qe_next;
 struct bfa_lps_s *lps;

 bfa_trc(bfa, count);

 qe = bfa_q_next(first_lps);

 while (count && qe) {
  qe_next = bfa_q_next(qe);
  lps = (struct bfa_lps_s *)qe;
  bfa_trc(bfa, lps->bfa_tag);
  lps->status = first_lps->status;
  list_del(&lps->qe);
  list_add_tail(&lps->qe, &mod->lps_active_q);
  bfa_sm_send_event(lps, BFA_LPS_SM_FWRSP);
  qe = qe_next;
  count--;
 }
}
