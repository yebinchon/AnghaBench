
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ipw2100_priv {TYPE_3__* tx_buffers; int pci_dev; int tx_queue; } ;
struct ipw2100_data_header {int dummy; } ;
struct TYPE_4__ {int data_phys; scalar_t__ data; int * txb; } ;
struct TYPE_5__ {TYPE_1__ d_struct; } ;
struct TYPE_6__ {TYPE_2__ info; } ;


 int IPW_DEBUG_INFO (char*) ;
 int TX_PENDED_QUEUE_LENGTH ;
 int bd_queue_free (struct ipw2100_priv*,int *) ;
 int kfree (TYPE_3__*) ;
 int libipw_txb_free (int *) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;

__attribute__((used)) static void ipw2100_tx_free(struct ipw2100_priv *priv)
{
 int i;

 IPW_DEBUG_INFO("enter\n");

 bd_queue_free(priv, &priv->tx_queue);

 if (!priv->tx_buffers)
  return;

 for (i = 0; i < TX_PENDED_QUEUE_LENGTH; i++) {
  if (priv->tx_buffers[i].info.d_struct.txb) {
   libipw_txb_free(priv->tx_buffers[i].info.d_struct.
        txb);
   priv->tx_buffers[i].info.d_struct.txb = ((void*)0);
  }
  if (priv->tx_buffers[i].info.d_struct.data)
   pci_free_consistent(priv->pci_dev,
         sizeof(struct ipw2100_data_header),
         priv->tx_buffers[i].info.d_struct.
         data,
         priv->tx_buffers[i].info.d_struct.
         data_phys);
 }

 kfree(priv->tx_buffers);
 priv->tx_buffers = ((void*)0);

 IPW_DEBUG_INFO("exit\n");
}
