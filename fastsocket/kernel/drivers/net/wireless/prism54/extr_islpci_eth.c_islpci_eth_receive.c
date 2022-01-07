
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct sk_buff {unsigned char* data; int truesize; int len; int ip_summed; int protocol; struct net_device* dev; } ;
struct TYPE_12__ {scalar_t__ rssi; } ;
struct rx_annex_header {int addr2; TYPE_2__ rfmon; } ;
struct rfmon_header {int dummy; } ;
struct TYPE_15__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_5__ stats; } ;
struct iw_quality {int updated; scalar_t__ noise; scalar_t__ level; scalar_t__ qual; } ;
struct TYPE_13__ {scalar_t__ noise; } ;
struct TYPE_14__ {TYPE_3__ qual; } ;
struct TYPE_16__ {size_t free_data_rx; scalar_t__ iw_mode; scalar_t__* pci_map_rx_address; int pdev; struct sk_buff** data_low_rx; TYPE_4__ local_iwstatistics; TYPE_7__* control_block; struct net_device* ndev; } ;
typedef TYPE_6__ islpci_private ;
struct TYPE_17__ {int * driver_curr_frag; TYPE_1__* rx_data_low; } ;
typedef TYPE_7__ isl38xx_control_block ;
struct TYPE_11__ {int address; int size; } ;


 int CHECKSUM_NONE ;
 int DEBUG (int ,char*,...) ;
 int ETH_ALEN ;
 size_t ISL38XX_CB_RX_DATA_LQ ;
 size_t ISL38XX_CB_RX_QSIZE ;
 scalar_t__ IW_MODE_MONITOR ;
 scalar_t__ MAX_FRAGMENT_SIZE_RX ;
 int PCI_DMA_FROMDEVICE ;
 int SHOW_BUFFER_CONTENTS ;
 int SHOW_ERROR_MESSAGES ;
 int SHOW_FUNCTION_CALLS ;
 int SHOW_TRACING ;
 int cpu_to_le32 (size_t) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int display_buffer (char*,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ init_wds ;
 int islpci_monitor_rx (TYPE_6__*,struct sk_buff**) ;
 int islpci_trigger (TYPE_6__*) ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int) ;
 size_t le32_to_cpu (int ) ;
 int memmove (unsigned char*,unsigned char*,int ) ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ pci_map_single (int ,void*,scalar_t__,int ) ;
 int pci_unmap_single (int ,scalar_t__,scalar_t__,int ) ;
 int printk (char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int skb_copy_from_linear_data (struct sk_buff*,unsigned char*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;
 int wireless_spy_update (struct net_device*,int ,struct iw_quality*) ;
 int wmb () ;

int
islpci_eth_receive(islpci_private *priv)
{
 struct net_device *ndev = priv->ndev;
 isl38xx_control_block *control_block = priv->control_block;
 struct sk_buff *skb;
 u16 size;
 u32 index, offset;
 unsigned char *src;
 int discard = 0;







 index = priv->free_data_rx % ISL38XX_CB_RX_QSIZE;
 size = le16_to_cpu(control_block->rx_data_low[index].size);
 skb = priv->data_low_rx[index];
 offset = ((unsigned long)
    le32_to_cpu(control_block->rx_data_low[index].address) -
    (unsigned long) skb->data) & 3;
 pci_unmap_single(priv->pdev,
    priv->pci_map_rx_address[index],
    MAX_FRAGMENT_SIZE_RX + 2, PCI_DMA_FROMDEVICE);


 skb_put(skb, size);
 if (offset) {

  skb_pull(skb, 2);
  skb_put(skb, 2);
 }
 if (init_wds) {

  src = skb->data + 6;
  memmove(skb->data, src, skb->len - 6);
  skb_trim(skb, skb->len - 6);
 }
 if (unlikely(priv->iw_mode == IW_MODE_MONITOR)) {
  skb->dev = ndev;
  discard = islpci_monitor_rx(priv, &skb);
 } else {
  if (unlikely(skb->data[2 * ETH_ALEN] == 0)) {



   struct iw_quality wstats;
   struct rx_annex_header *annex =
       (struct rx_annex_header *) skb->data;
   wstats.level = annex->rfmon.rssi;


   wstats.noise = priv->local_iwstatistics.qual.noise;
   wstats.qual = wstats.level - wstats.noise;
   wstats.updated = 0x07;

   wireless_spy_update(ndev, annex->addr2, &wstats);

   skb_copy_from_linear_data(skb,
        (skb->data +
         sizeof(struct rfmon_header)),
        2 * ETH_ALEN);
   skb_pull(skb, sizeof (struct rfmon_header));
  }
  skb->protocol = eth_type_trans(skb, ndev);
 }
 skb->ip_summed = CHECKSUM_NONE;
 ndev->stats.rx_packets++;
 ndev->stats.rx_bytes += size;
 if (unlikely(discard)) {
  dev_kfree_skb_irq(skb);
  skb = ((void*)0);
 } else
  netif_rx(skb);


 priv->free_data_rx++;


 while (index =
        le32_to_cpu(control_block->
      driver_curr_frag[ISL38XX_CB_RX_DATA_LQ]),
        index - priv->free_data_rx < ISL38XX_CB_RX_QSIZE) {


  skb = dev_alloc_skb(MAX_FRAGMENT_SIZE_RX + 2);
  if (unlikely(skb == ((void*)0))) {

   DEBUG(SHOW_ERROR_MESSAGES, "Error allocating skb \n");
   break;
  }
  skb_reserve(skb, (4 - (long) skb->data) & 0x03);

  index = index % ISL38XX_CB_RX_QSIZE;
  priv->data_low_rx[index] = skb;
  priv->pci_map_rx_address[index] =
      pci_map_single(priv->pdev, (void *) skb->data,
       MAX_FRAGMENT_SIZE_RX + 2,
       PCI_DMA_FROMDEVICE);
  if (unlikely(!priv->pci_map_rx_address[index])) {

   DEBUG(SHOW_ERROR_MESSAGES,
         "Error mapping DMA address\n");


   dev_kfree_skb_irq((struct sk_buff *) skb);
   skb = ((void*)0);
   break;
  }

  control_block->rx_data_low[index].address =
   cpu_to_le32((u32)priv->pci_map_rx_address[index]);
  wmb();


  le32_add_cpu(&control_block->
        driver_curr_frag[ISL38XX_CB_RX_DATA_LQ], 1);
 }


 islpci_trigger(priv);

 return 0;
}
