
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;


 int BFA_UF_MOD (struct bfa_s*) ;
 int bfa_uf_post_all (int ) ;

__attribute__((used)) static void
bfa_uf_start(struct bfa_s *bfa)
{
 bfa_uf_post_all(BFA_UF_MOD(bfa));
}
