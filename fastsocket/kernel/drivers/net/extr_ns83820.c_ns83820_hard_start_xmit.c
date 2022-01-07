
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ ip_summed; unsigned int len; int data; scalar_t__ data_len; } ;
struct ns83820 {int CFG_cache; int tx_free_idx; unsigned int tx_done_idx; int tx_intr_idx; int tx_phy_descs; int tx_lock; int nr_tx_skbs; struct sk_buff** tx_skbs; int pci_dev; int * tx_descs; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {unsigned int size; int page_offset; int page; } ;
typedef TYPE_1__ skb_frag_t ;
typedef int netdev_tx_t ;
typedef scalar_t__ dma_addr_t ;
typedef int __le32 ;
struct TYPE_6__ {scalar_t__ protocol; } ;
struct TYPE_5__ {int nr_frags; TYPE_1__* frags; } ;


 int CFG_LNKSTS ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int CMDSTS_INTR ;
 int CMDSTS_MORE ;
 int CMDSTS_OWN ;
 int DESC_BUFPTR ;
 size_t DESC_CMDSTS ;
 size_t DESC_EXTSTS ;
 size_t DESC_LINK ;
 int DESC_SIZE ;
 int EXTSTS_IPPKT ;
 int EXTSTS_TCPPKT ;
 int EXTSTS_UDPPKT ;
 int EXTSTS_VPKT ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int MIN_TX_DESC_FREE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 unsigned int NR_TX_DESC ;
 int PCI_DMA_TODEVICE ;
 struct ns83820* PRIV (struct net_device*) ;
 int atomic_inc (int *) ;
 int volatile cpu_to_le32 (int) ;
 int desc_addr_set (int volatile*,scalar_t__) ;
 int dprintk (char*,...) ;
 int htons (short) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int kick_tx (struct ns83820*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ page_to_pfn (int ) ;
 scalar_t__ pci_map_page (int ,int ,int ,unsigned int,int ) ;
 scalar_t__ pci_map_single (int ,int ,unsigned int,int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ start_tx_okay (struct ns83820*) ;
 scalar_t__ unlikely (int) ;
 short vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t ns83820_hard_start_xmit(struct sk_buff *skb,
        struct net_device *ndev)
{
 struct ns83820 *dev = PRIV(ndev);
 u32 free_idx, cmdsts, extsts;
 int nr_free, nr_frags;
 unsigned tx_done_idx, last_idx;
 dma_addr_t buf;
 unsigned len;
 skb_frag_t *frag;
 int stopped = 0;
 int do_intr = 0;
 volatile __le32 *first_desc;

 dprintk("ns83820_hard_start_xmit\n");

 nr_frags = skb_shinfo(skb)->nr_frags;
again:
 if (unlikely(dev->CFG_cache & CFG_LNKSTS)) {
  netif_stop_queue(ndev);
  if (unlikely(dev->CFG_cache & CFG_LNKSTS))
   return NETDEV_TX_BUSY;
  netif_start_queue(ndev);
 }

 last_idx = free_idx = dev->tx_free_idx;
 tx_done_idx = dev->tx_done_idx;
 nr_free = (tx_done_idx + NR_TX_DESC-2 - free_idx) % NR_TX_DESC;
 nr_free -= 1;
 if (nr_free <= nr_frags) {
  dprintk("stop_queue - not enough(%p)\n", ndev);
  netif_stop_queue(ndev);


  if (dev->tx_done_idx != tx_done_idx) {
   dprintk("restart queue(%p)\n", ndev);
   netif_start_queue(ndev);
   goto again;
  }
  return NETDEV_TX_BUSY;
 }

 if (free_idx == dev->tx_intr_idx) {
  do_intr = 1;
  dev->tx_intr_idx = (dev->tx_intr_idx + NR_TX_DESC/4) % NR_TX_DESC;
 }

 nr_free -= nr_frags;
 if (nr_free < MIN_TX_DESC_FREE) {
  dprintk("stop_queue - last entry(%p)\n", ndev);
  netif_stop_queue(ndev);
  stopped = 1;
 }

 frag = skb_shinfo(skb)->frags;
 if (!nr_frags)
  frag = ((void*)0);
 extsts = 0;
 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  extsts |= EXTSTS_IPPKT;
  if (IPPROTO_TCP == ip_hdr(skb)->protocol)
   extsts |= EXTSTS_TCPPKT;
  else if (IPPROTO_UDP == ip_hdr(skb)->protocol)
   extsts |= EXTSTS_UDPPKT;
 }
 len = skb->len;
 if (nr_frags)
  len -= skb->data_len;
 buf = pci_map_single(dev->pci_dev, skb->data, len, PCI_DMA_TODEVICE);

 first_desc = dev->tx_descs + (free_idx * DESC_SIZE);

 for (;;) {
  volatile __le32 *desc = dev->tx_descs + (free_idx * DESC_SIZE);

  dprintk("frag[%3u]: %4u @ 0x%08Lx\n", free_idx, len,
   (unsigned long long)buf);
  last_idx = free_idx;
  free_idx = (free_idx + 1) % NR_TX_DESC;
  desc[DESC_LINK] = cpu_to_le32(dev->tx_phy_descs + (free_idx * DESC_SIZE * 4));
  desc_addr_set(desc + DESC_BUFPTR, buf);
  desc[DESC_EXTSTS] = cpu_to_le32(extsts);

  cmdsts = ((nr_frags) ? CMDSTS_MORE : do_intr ? CMDSTS_INTR : 0);
  cmdsts |= (desc == first_desc) ? 0 : CMDSTS_OWN;
  cmdsts |= len;
  desc[DESC_CMDSTS] = cpu_to_le32(cmdsts);

  if (!nr_frags)
   break;

  buf = pci_map_page(dev->pci_dev, frag->page,
       frag->page_offset,
       frag->size, PCI_DMA_TODEVICE);
  dprintk("frag: buf=%08Lx  page=%08lx offset=%08lx\n",
   (long long)buf, (long) page_to_pfn(frag->page),
   frag->page_offset);
  len = frag->size;
  frag++;
  nr_frags--;
 }
 dprintk("done pkt\n");

 spin_lock_irq(&dev->tx_lock);
 dev->tx_skbs[last_idx] = skb;
 first_desc[DESC_CMDSTS] |= cpu_to_le32(CMDSTS_OWN);
 dev->tx_free_idx = free_idx;
 atomic_inc(&dev->nr_tx_skbs);
 spin_unlock_irq(&dev->tx_lock);

 kick_tx(dev);


 if (stopped && (dev->tx_done_idx != tx_done_idx) && start_tx_okay(dev))
  netif_start_queue(ndev);

 return NETDEV_TX_OK;
}
