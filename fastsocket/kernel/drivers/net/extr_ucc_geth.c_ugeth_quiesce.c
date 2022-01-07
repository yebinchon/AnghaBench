
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucc_geth_private {int napi; TYPE_2__* ug_info; int ndev; } ;
struct TYPE_3__ {int irq; } ;
struct TYPE_4__ {TYPE_1__ uf_info; } ;


 int disable_irq (int ) ;
 int napi_disable (int *) ;
 int netif_tx_disable (int ) ;

__attribute__((used)) static void ugeth_quiesce(struct ucc_geth_private *ugeth)
{

 netif_tx_disable(ugeth->ndev);


 disable_irq(ugeth->ug_info->uf_info.irq);


 napi_disable(&ugeth->napi);
}
