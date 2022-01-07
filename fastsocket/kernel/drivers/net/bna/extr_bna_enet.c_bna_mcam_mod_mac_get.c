
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bna_mcam_mod {int free_q; } ;
struct bna_mac {int dummy; } ;


 int bfa_q_deq (int *,struct list_head**) ;
 scalar_t__ list_empty (int *) ;

struct bna_mac *
bna_mcam_mod_mac_get(struct bna_mcam_mod *mcam_mod)
{
 struct list_head *qe;

 if (list_empty(&mcam_mod->free_q))
  return ((void*)0);

 bfa_q_deq(&mcam_mod->free_q, &qe);

 return (struct bna_mac *)qe;
}
