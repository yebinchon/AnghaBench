
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucc_geth_private {int ndev; TYPE_2__* ug_info; int napi; } ;
struct TYPE_3__ {int irq; } ;
struct TYPE_4__ {TYPE_1__ uf_info; } ;


 int enable_irq (int ) ;
 int napi_enable (int *) ;
 int netif_tx_wake_all_queues (int ) ;

__attribute__((used)) static void ugeth_activate(struct ucc_geth_private *ugeth)
{
 napi_enable(&ugeth->napi);
 enable_irq(ugeth->ug_info->uf_info.irq);
 netif_tx_wake_all_queues(ugeth->ndev);
}
