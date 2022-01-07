
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bna_rxq {int qe; } ;
struct bna_rx_mod {int rxq_free_count; int rxq_free_q; } ;


 int bfa_q_deq (int *,struct list_head**) ;
 int bfa_q_qe_init (int *) ;

__attribute__((used)) static struct bna_rxq *
bna_rxq_get(struct bna_rx_mod *rx_mod)
{
 struct bna_rxq *rxq = ((void*)0);
 struct list_head *qe = ((void*)0);

 bfa_q_deq(&rx_mod->rxq_free_q, &qe);
 rx_mod->rxq_free_count--;
 rxq = (struct bna_rxq *)qe;
 bfa_q_qe_init(&rxq->qe);

 return rxq;
}
