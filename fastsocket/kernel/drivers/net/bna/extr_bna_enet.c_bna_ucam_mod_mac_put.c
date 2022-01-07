
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ucam_mod {int free_q; } ;
struct bna_mac {int qe; } ;


 int list_add_tail (int *,int *) ;

void
bna_ucam_mod_mac_put(struct bna_ucam_mod *ucam_mod, struct bna_mac *mac)
{
 list_add_tail(&mac->qe, &ucam_mod->free_q);
}
