
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_uf_s {int bfa; } ;


 int BFA_UF_MOD (int ) ;
 int bfa_uf_post_all (int ) ;
 int bfa_uf_put (int ,struct bfa_uf_s*) ;

void
bfa_uf_free(struct bfa_uf_s *uf)
{
 bfa_uf_put(BFA_UF_MOD(uf->bfa), uf);
 bfa_uf_post_all(BFA_UF_MOD(uf->bfa));
}
