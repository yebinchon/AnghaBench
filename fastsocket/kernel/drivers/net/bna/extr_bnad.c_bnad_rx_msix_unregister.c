
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnad_rx_info {TYPE_2__* rx_ctrl; } ;
struct bnad {TYPE_1__* msix_table; } ;
struct TYPE_6__ {int intr_vector; } ;
struct TYPE_5__ {TYPE_3__* ccb; } ;
struct TYPE_4__ {int vector; } ;


 int free_irq (int ,TYPE_3__*) ;

__attribute__((used)) static void
bnad_rx_msix_unregister(struct bnad *bnad, struct bnad_rx_info *rx_info,
   int num_rxps)
{
 int i;
 int vector_num;

 for (i = 0; i < num_rxps; i++) {
  if (rx_info->rx_ctrl[i].ccb == ((void*)0))
   continue;

  vector_num = rx_info->rx_ctrl[i].ccb->intr_vector;
  free_irq(bnad->msix_table[vector_num].vector,
    rx_info->rx_ctrl[i].ccb);
 }
}
