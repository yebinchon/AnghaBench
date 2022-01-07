
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct bnad_tx_info {TYPE_3__** tcb; } ;
struct bnad {TYPE_2__* msix_table; TYPE_1__* netdev; } ;
typedef int irq_handler_t ;
struct TYPE_6__ {int intr_vector; int id; int name; } ;
struct TYPE_5__ {int vector; } ;
struct TYPE_4__ {char* name; } ;


 scalar_t__ bnad_msix_tx ;
 int bnad_tx_msix_unregister (struct bnad*,struct bnad_tx_info*,int) ;
 int request_irq (int ,int ,int ,int ,TYPE_3__*) ;
 int sprintf (int ,char*,char*,int) ;

__attribute__((used)) static int
bnad_tx_msix_register(struct bnad *bnad, struct bnad_tx_info *tx_info,
   u32 tx_id, int num_txqs)
{
 int i;
 int err;
 int vector_num;

 for (i = 0; i < num_txqs; i++) {
  vector_num = tx_info->tcb[i]->intr_vector;
  sprintf(tx_info->tcb[i]->name, "%s TXQ %d", bnad->netdev->name,
    tx_id + tx_info->tcb[i]->id);
  err = request_irq(bnad->msix_table[vector_num].vector,
      (irq_handler_t)bnad_msix_tx, 0,
      tx_info->tcb[i]->name,
      tx_info->tcb[i]);
  if (err)
   goto err_return;
 }

 return 0;

err_return:
 if (i > 0)
  bnad_tx_msix_unregister(bnad, tx_info, (i - 1));
 return -1;
}
