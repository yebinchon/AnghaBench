
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_uf_s {int qe; } ;
struct bfa_uf_mod_s {int uf_free_q; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
bfa_uf_put(struct bfa_uf_mod_s *uf_mod, struct bfa_uf_s *uf)
{
 list_add_tail(&uf->qe, &uf_mod->uf_free_q);
}
