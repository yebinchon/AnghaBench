
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_uf_mod_s {int uf_unused_q; int uf_posted_q; int uf_free_q; int num_ufs; struct bfa_s* bfa; } ;
struct bfa_s {int dummy; } ;
struct bfa_pcidev_s {int dummy; } ;
struct TYPE_2__ {int num_uf_bufs; } ;
struct bfa_iocfc_cfg_s {TYPE_1__ fwcfg; } ;


 struct bfa_uf_mod_s* BFA_UF_MOD (struct bfa_s*) ;
 int INIT_LIST_HEAD (int *) ;
 int uf_mem_claim (struct bfa_uf_mod_s*) ;

__attribute__((used)) static void
bfa_uf_attach(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
  struct bfa_pcidev_s *pcidev)
{
 struct bfa_uf_mod_s *ufm = BFA_UF_MOD(bfa);

 ufm->bfa = bfa;
 ufm->num_ufs = cfg->fwcfg.num_uf_bufs;
 INIT_LIST_HEAD(&ufm->uf_free_q);
 INIT_LIST_HEAD(&ufm->uf_posted_q);
 INIT_LIST_HEAD(&ufm->uf_unused_q);

 uf_mem_claim(ufm);
}
