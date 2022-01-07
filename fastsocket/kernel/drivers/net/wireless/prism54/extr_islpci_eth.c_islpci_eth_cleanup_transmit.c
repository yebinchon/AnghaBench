
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct sk_buff {int len; int truesize; int data; } ;
struct TYPE_5__ {size_t free_data_tx; scalar_t__* pci_map_tx_address; int pdev; struct sk_buff** data_low_tx; } ;
typedef TYPE_1__ islpci_private ;
struct TYPE_6__ {int * device_curr_frag; } ;
typedef TYPE_2__ isl38xx_control_block ;


 int DEBUG (int ,char*,struct sk_buff*,int ,int ,int ) ;
 size_t ISL38XX_CB_TX_DATA_LQ ;
 size_t ISL38XX_CB_TX_QSIZE ;
 int PCI_DMA_TODEVICE ;
 int SHOW_TRACING ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 size_t le32_to_cpu (int ) ;
 int pci_unmap_single (int ,scalar_t__,int ,int ) ;

void
islpci_eth_cleanup_transmit(islpci_private *priv,
       isl38xx_control_block *control_block)
{
 struct sk_buff *skb;
 u32 index;


 while (priv->free_data_tx !=
        le32_to_cpu(control_block->
      device_curr_frag[ISL38XX_CB_TX_DATA_LQ])) {

  index = priv->free_data_tx % ISL38XX_CB_TX_QSIZE;



  if (priv->pci_map_tx_address[index]) {


   skb = priv->data_low_tx[index];







   pci_unmap_single(priv->pdev,
      priv->pci_map_tx_address[index],
      skb->len, PCI_DMA_TODEVICE);
   dev_kfree_skb_irq(skb);
   skb = ((void*)0);
  }

  priv->free_data_tx++;
 }
}
