
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna {int mod_flags; int * bnad; int ioceth; int enet; int ethport; int stats_mod; int tx_mod; int rx_mod; int ucam_mod; int mcam_mod; } ;


 int BNA_MOD_F_INIT_DONE ;
 int bna_enet_uninit (int *) ;
 int bna_ethport_uninit (int *) ;
 int bna_ioceth_uninit (int *) ;
 int bna_mcam_mod_uninit (int *) ;
 int bna_rx_mod_uninit (int *) ;
 int bna_stats_mod_uninit (int *) ;
 int bna_tx_mod_uninit (int *) ;
 int bna_ucam_mod_uninit (int *) ;

void
bna_uninit(struct bna *bna)
{
 if (bna->mod_flags & BNA_MOD_F_INIT_DONE) {
  bna_mcam_mod_uninit(&bna->mcam_mod);
  bna_ucam_mod_uninit(&bna->ucam_mod);
  bna_rx_mod_uninit(&bna->rx_mod);
  bna_tx_mod_uninit(&bna->tx_mod);
  bna->mod_flags &= ~BNA_MOD_F_INIT_DONE;
 }

 bna_stats_mod_uninit(&bna->stats_mod);
 bna_ethport_uninit(&bna->ethport);
 bna_enet_uninit(&bna->enet);

 bna_ioceth_uninit(&bna->ioceth);

 bna->bnad = ((void*)0);
}
