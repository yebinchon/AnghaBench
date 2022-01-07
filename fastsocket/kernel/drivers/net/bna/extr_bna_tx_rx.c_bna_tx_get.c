
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bna_tx_mod {int tx_free_q; } ;
struct bna_tx {int type; int qe; } ;
typedef enum bna_tx_type { ____Placeholder_bna_tx_type } bna_tx_type ;


 int BNA_TX_T_REGULAR ;
 int bfa_q_deq (int *,struct list_head**) ;
 int bfa_q_deq_tail (int *,struct list_head**) ;
 int bfa_q_qe_init (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static struct bna_tx *
bna_tx_get(struct bna_tx_mod *tx_mod, enum bna_tx_type type)
{
 struct list_head *qe = ((void*)0);
 struct bna_tx *tx = ((void*)0);

 if (list_empty(&tx_mod->tx_free_q))
  return ((void*)0);
 if (type == BNA_TX_T_REGULAR) {
  bfa_q_deq(&tx_mod->tx_free_q, &qe);
 } else {
  bfa_q_deq_tail(&tx_mod->tx_free_q, &qe);
 }
 tx = (struct bna_tx *)qe;
 bfa_q_qe_init(&tx->qe);
 tx->type = type;

 return tx;
}
