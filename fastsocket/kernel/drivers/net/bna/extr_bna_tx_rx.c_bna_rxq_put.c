
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxq {int qe; } ;
struct bna_rx_mod {int rxq_free_count; int rxq_free_q; } ;


 int bfa_q_qe_init (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
bna_rxq_put(struct bna_rx_mod *rx_mod, struct bna_rxq *rxq)
{
 bfa_q_qe_init(&rxq->qe);
 list_add_tail(&rxq->qe, &rx_mod->rxq_free_q);
 rx_mod->rxq_free_count++;
}
