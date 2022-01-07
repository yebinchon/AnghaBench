
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; int tx_errors; } ;
struct ns83820 {int tx_done_idx; int tx_free_idx; int * tx_descs; int pci_dev; int nr_tx_skbs; struct sk_buff** tx_skbs; TYPE_1__ stats; } ;
typedef struct sk_buff net_device ;
typedef int dma_addr_t ;
typedef int __le32 ;


 int CMDSTS_ERR ;
 int CMDSTS_LEN_MASK ;
 int CMDSTS_OK ;
 int CMDSTS_OWN ;
 int DESC_BUFPTR ;
 size_t DESC_CMDSTS ;
 int DESC_SIZE ;
 int NR_TX_DESC ;
 int PCI_DMA_TODEVICE ;
 struct ns83820* PRIV (struct sk_buff*) ;
 int atomic_dec (int *) ;
 int cpu_to_le32 (int ) ;
 int desc_addr_get (int *) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dprintk (char*,int,...) ;
 int le32_to_cpu (int ) ;
 int mb () ;
 scalar_t__ netif_queue_stopped (struct sk_buff*) ;
 int netif_start_queue (struct sk_buff*) ;
 int netif_wake_queue (struct sk_buff*) ;
 int pci_unmap_page (int ,int ,unsigned int,int ) ;
 int pci_unmap_single (int ,int ,unsigned int,int ) ;
 scalar_t__ start_tx_okay (struct ns83820*) ;

__attribute__((used)) static void do_tx_done(struct net_device *ndev)
{
 struct ns83820 *dev = PRIV(ndev);
 u32 cmdsts, tx_done_idx;
 __le32 *desc;

 dprintk("do_tx_done(%p)\n", ndev);
 tx_done_idx = dev->tx_done_idx;
 desc = dev->tx_descs + (tx_done_idx * DESC_SIZE);

 dprintk("tx_done_idx=%d free_idx=%d cmdsts=%08x\n",
  tx_done_idx, dev->tx_free_idx, le32_to_cpu(desc[DESC_CMDSTS]));
 while ((tx_done_idx != dev->tx_free_idx) &&
        !(CMDSTS_OWN & (cmdsts = le32_to_cpu(desc[DESC_CMDSTS]))) ) {
  struct sk_buff *skb;
  unsigned len;
  dma_addr_t addr;

  if (cmdsts & CMDSTS_ERR)
   dev->stats.tx_errors ++;
  if (cmdsts & CMDSTS_OK)
   dev->stats.tx_packets ++;
  if (cmdsts & CMDSTS_OK)
   dev->stats.tx_bytes += cmdsts & 0xffff;

  dprintk("tx_done_idx=%d free_idx=%d cmdsts=%08x\n",
   tx_done_idx, dev->tx_free_idx, cmdsts);
  skb = dev->tx_skbs[tx_done_idx];
  dev->tx_skbs[tx_done_idx] = ((void*)0);
  dprintk("done(%p)\n", skb);

  len = cmdsts & CMDSTS_LEN_MASK;
  addr = desc_addr_get(desc + DESC_BUFPTR);
  if (skb) {
   pci_unmap_single(dev->pci_dev,
     addr,
     len,
     PCI_DMA_TODEVICE);
   dev_kfree_skb_irq(skb);
   atomic_dec(&dev->nr_tx_skbs);
  } else
   pci_unmap_page(dev->pci_dev,
     addr,
     len,
     PCI_DMA_TODEVICE);

  tx_done_idx = (tx_done_idx + 1) % NR_TX_DESC;
  dev->tx_done_idx = tx_done_idx;
  desc[DESC_CMDSTS] = cpu_to_le32(0);
  mb();
  desc = dev->tx_descs + (tx_done_idx * DESC_SIZE);
 }




 if (netif_queue_stopped(ndev) && start_tx_okay(dev)) {
  dprintk("start_queue(%p)\n", ndev);
  netif_start_queue(ndev);
  netif_wake_queue(ndev);
 }
}
