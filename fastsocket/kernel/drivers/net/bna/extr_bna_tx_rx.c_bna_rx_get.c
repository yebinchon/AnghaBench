
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bna_rx_mod {int rx_active_q; int rx_free_count; int rx_free_q; } ;
struct bna_rx {int type; int qe; } ;
typedef enum bna_rx_type { ____Placeholder_bna_rx_type } bna_rx_type ;


 int BNA_RX_T_REGULAR ;
 int bfa_q_deq (int *,struct list_head**) ;
 int bfa_q_deq_tail (int *,struct list_head**) ;
 int bfa_q_qe_init (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct bna_rx *
bna_rx_get(struct bna_rx_mod *rx_mod, enum bna_rx_type type)
{
 struct list_head *qe = ((void*)0);
 struct bna_rx *rx = ((void*)0);

 if (type == BNA_RX_T_REGULAR) {
  bfa_q_deq(&rx_mod->rx_free_q, &qe);
 } else
  bfa_q_deq_tail(&rx_mod->rx_free_q, &qe);

 rx_mod->rx_free_count--;
 rx = (struct bna_rx *)qe;
 bfa_q_qe_init(&rx->qe);
 list_add_tail(&rx->qe, &rx_mod->rx_active_q);
 rx->type = type;

 return rx;
}
