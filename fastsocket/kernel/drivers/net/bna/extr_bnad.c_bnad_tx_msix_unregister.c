
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnad_tx_info {TYPE_2__** tcb; } ;
struct bnad {TYPE_1__* msix_table; } ;
struct TYPE_4__ {int intr_vector; } ;
struct TYPE_3__ {int vector; } ;


 int free_irq (int ,TYPE_2__*) ;

__attribute__((used)) static void
bnad_tx_msix_unregister(struct bnad *bnad, struct bnad_tx_info *tx_info,
   int num_txqs)
{
 int i;
 int vector_num;

 for (i = 0; i < num_txqs; i++) {
  if (tx_info->tcb[i] == ((void*)0))
   continue;

  vector_num = tx_info->tcb[i]->intr_vector;
  free_irq(bnad->msix_table[vector_num].vector, tx_info->tcb[i]);
 }
}
