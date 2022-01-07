
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_uf_s {int dummy; } ;
struct bfa_uf_mod_s {int uf_free_q; } ;


 int bfa_q_deq (int *,struct bfa_uf_s**) ;

__attribute__((used)) static struct bfa_uf_s *
bfa_uf_get(struct bfa_uf_mod_s *uf_mod)
{
 struct bfa_uf_s *uf;

 bfa_q_deq(&uf_mod->uf_free_q, &uf);
 return uf;
}
