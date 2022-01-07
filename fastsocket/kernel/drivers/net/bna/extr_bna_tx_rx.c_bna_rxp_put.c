
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxp {int qe; } ;
struct bna_rx_mod {int rxp_free_count; int rxp_free_q; } ;


 int bfa_q_qe_init (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
bna_rxp_put(struct bna_rx_mod *rx_mod, struct bna_rxp *rxp)
{
 bfa_q_qe_init(&rxp->qe);
 list_add_tail(&rxp->qe, &rx_mod->rxp_free_q);
 rx_mod->rxp_free_count++;
}
