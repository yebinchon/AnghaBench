
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_mcam_mod {int free_q; } ;
struct bna_mac {int qe; } ;


 int list_add_tail (int *,int *) ;

void
bna_mcam_mod_mac_put(struct bna_mcam_mod *mcam_mod, struct bna_mac *mac)
{
 list_add_tail(&mac->qe, &mcam_mod->free_q);
}
