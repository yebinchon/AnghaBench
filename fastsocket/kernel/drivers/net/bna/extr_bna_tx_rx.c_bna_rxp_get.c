
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bna_rxp {int qe; } ;
struct bna_rx_mod {int rxp_free_count; int rxp_free_q; } ;


 int bfa_q_deq (int *,struct list_head**) ;
 int bfa_q_qe_init (int *) ;

__attribute__((used)) static struct bna_rxp *
bna_rxp_get(struct bna_rx_mod *rx_mod)
{
 struct list_head *qe = ((void*)0);
 struct bna_rxp *rxp = ((void*)0);

 bfa_q_deq(&rx_mod->rxp_free_q, &qe);
 rx_mod->rxp_free_count--;
 rxp = (struct bna_rxp *)qe;
 bfa_q_qe_init(&rxp->qe);

 return rxp;
}
