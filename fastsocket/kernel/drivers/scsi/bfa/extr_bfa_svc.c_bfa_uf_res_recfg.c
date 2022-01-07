
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct list_head {int dummy; } ;
struct bfa_uf_mod_s {int num_ufs; int uf_unused_q; int uf_free_q; } ;
struct bfa_s {int dummy; } ;


 struct bfa_uf_mod_s* BFA_UF_MOD (struct bfa_s*) ;
 int bfa_q_deq_tail (int *,struct list_head**) ;
 int list_add_tail (struct list_head*,int *) ;

void
bfa_uf_res_recfg(struct bfa_s *bfa, u16 num_uf_fw)
{
 struct bfa_uf_mod_s *mod = BFA_UF_MOD(bfa);
 struct list_head *qe;
 int i;

 for (i = 0; i < (mod->num_ufs - num_uf_fw); i++) {
  bfa_q_deq_tail(&mod->uf_free_q, &qe);
  list_add_tail(qe, &mod->uf_unused_q);
 }
}
