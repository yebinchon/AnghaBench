
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bfa_sgpg_wqe_s {int nsgpg; int cbarg; int (* cbfn ) (int ) ;int qe; int sgpg_q; } ;
struct bfa_sgpg_mod_s {int free_sgpgs; int num_sgpgs; int sgpg_wait_q; int sgpg_q; } ;
struct bfa_s {int dummy; } ;


 struct bfa_sgpg_mod_s* BFA_SGPG_MOD (struct bfa_s*) ;
 int WARN_ON (int) ;
 struct bfa_sgpg_wqe_s* bfa_q_first (int *) ;
 int bfa_sgpg_malloc (struct bfa_s*,int *,int) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int list_splice_tail_init (struct list_head*,int *) ;
 int stub1 (int ) ;

void
bfa_sgpg_mfree(struct bfa_s *bfa, struct list_head *sgpg_q, int nsgpg)
{
 struct bfa_sgpg_mod_s *mod = BFA_SGPG_MOD(bfa);
 struct bfa_sgpg_wqe_s *wqe;

 mod->free_sgpgs += nsgpg;
 WARN_ON(mod->free_sgpgs > mod->num_sgpgs);

 list_splice_tail_init(sgpg_q, &mod->sgpg_q);

 if (list_empty(&mod->sgpg_wait_q))
  return;




 do {
  wqe = bfa_q_first(&mod->sgpg_wait_q);
  if (mod->free_sgpgs < wqe->nsgpg)
   nsgpg = mod->free_sgpgs;
  else
   nsgpg = wqe->nsgpg;
  bfa_sgpg_malloc(bfa, &wqe->sgpg_q, nsgpg);
  wqe->nsgpg -= nsgpg;
  if (wqe->nsgpg == 0) {
   list_del(&wqe->qe);
   wqe->cbfn(wqe->cbarg);
  }
 } while (mod->free_sgpgs && !list_empty(&mod->sgpg_wait_q));
}
