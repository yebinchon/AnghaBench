
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw2100_rx {int dummy; } ;
struct ipw2100_priv {TYPE_1__* rx_buffers; int pci_dev; int rx_queue; } ;
struct TYPE_2__ {int skb; int dma_addr; scalar_t__ rxp; } ;


 int IPW_DEBUG_INFO (char*) ;
 int PCI_DMA_FROMDEVICE ;
 int RX_QUEUE_LENGTH ;
 int bd_queue_free (struct ipw2100_priv*,int *) ;
 int dev_kfree_skb (int ) ;
 int kfree (TYPE_1__*) ;
 int pci_unmap_single (int ,int ,int,int ) ;
 int status_queue_free (struct ipw2100_priv*) ;

__attribute__((used)) static void ipw2100_rx_free(struct ipw2100_priv *priv)
{
 int i;

 IPW_DEBUG_INFO("enter\n");

 bd_queue_free(priv, &priv->rx_queue);
 status_queue_free(priv);

 if (!priv->rx_buffers)
  return;

 for (i = 0; i < RX_QUEUE_LENGTH; i++) {
  if (priv->rx_buffers[i].rxp) {
   pci_unmap_single(priv->pci_dev,
      priv->rx_buffers[i].dma_addr,
      sizeof(struct ipw2100_rx),
      PCI_DMA_FROMDEVICE);
   dev_kfree_skb(priv->rx_buffers[i].skb);
  }
 }

 kfree(priv->rx_buffers);
 priv->rx_buffers = ((void*)0);

 IPW_DEBUG_INFO("exit\n");
}
