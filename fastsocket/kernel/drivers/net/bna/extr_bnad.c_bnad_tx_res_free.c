
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnad {int dummy; } ;
struct TYPE_2__ {int intr_info; int mem_info; } ;
struct bna_res_info {scalar_t__ res_type; TYPE_1__ res_u; } ;


 scalar_t__ BNA_RES_T_INTR ;
 scalar_t__ BNA_RES_T_MEM ;
 int BNA_TX_RES_T_MAX ;
 int bnad_mem_free (struct bnad*,int *) ;
 int bnad_txrx_irq_free (struct bnad*,int *) ;

__attribute__((used)) static void
bnad_tx_res_free(struct bnad *bnad, struct bna_res_info *res_info)
{
 int i;

 for (i = 0; i < BNA_TX_RES_T_MAX; i++) {
  if (res_info[i].res_type == BNA_RES_T_MEM)
   bnad_mem_free(bnad, &res_info[i].res_u.mem_info);
  else if (res_info[i].res_type == BNA_RES_T_INTR)
   bnad_txrx_irq_free(bnad, &res_info[i].res_u.intr_info);
 }
}
