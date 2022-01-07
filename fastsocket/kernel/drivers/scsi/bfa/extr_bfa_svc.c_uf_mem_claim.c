
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_uf_mod_s {int dummy; } ;


 int claim_uf_post_msgs (struct bfa_uf_mod_s*) ;
 int claim_ufs (struct bfa_uf_mod_s*) ;

__attribute__((used)) static void
uf_mem_claim(struct bfa_uf_mod_s *ufm)
{
 claim_ufs(ufm);
 claim_uf_post_msgs(ufm);
}
