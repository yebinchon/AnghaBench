
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_4__ {struct b43_dmaring* tx_ring_mcast; } ;
struct b43_wldev {TYPE_2__* wl; TYPE_1__ dma; } ;
struct b43_dmaring {int stopped; int index; void* queue_prio; int tx; } ;
struct TYPE_5__ {int* tx_queue_stopped; int hw; } ;


 int B43_DBG_DMAVERBOSE ;
 int B43_WARN_ON (int) ;
 int ENOKEY ;
 int ENOSPC ;
 int IEEE80211_FCTL_MOREDATA ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ;
 scalar_t__ TX_SLOTS_PER_FRAME ;
 int WARN_ON (int) ;
 scalar_t__ b43_debug (struct b43_wldev*,int ) ;
 int b43dbg (TYPE_2__*,char*,int ) ;
 int b43err (TYPE_2__*,char*) ;
 int cpu_to_le16 (int ) ;
 int dma_tx_fragment (struct b43_dmaring*,struct sk_buff*) ;
 scalar_t__ free_slots (struct b43_dmaring*) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 int ieee80211_stop_queue (int ,unsigned int) ;
 struct b43_dmaring* select_ring_by_priority (struct b43_wldev*,void*) ;
 scalar_t__ should_inject_overflow (struct b43_dmaring*) ;
 void* skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int b43_dma_tx(struct b43_wldev *dev, struct sk_buff *skb)
{
 struct b43_dmaring *ring;
 struct ieee80211_hdr *hdr;
 int err = 0;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

 hdr = (struct ieee80211_hdr *)skb->data;
 if (info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {

  ring = dev->dma.tx_ring_mcast;


  hdr->frame_control |= cpu_to_le16(IEEE80211_FCTL_MOREDATA);
 } else {

  ring = select_ring_by_priority(
   dev, skb_get_queue_mapping(skb));
 }

 B43_WARN_ON(!ring->tx);

 if (unlikely(ring->stopped)) {




  if (b43_debug(dev, B43_DBG_DMAVERBOSE))
   b43err(dev->wl, "Packet after queue stopped\n");
  err = -ENOSPC;
  goto out;
 }

 if (unlikely(WARN_ON(free_slots(ring) < TX_SLOTS_PER_FRAME))) {


  b43err(dev->wl, "DMA queue overflow\n");
  err = -ENOSPC;
  goto out;
 }




 ring->queue_prio = skb_get_queue_mapping(skb);

 err = dma_tx_fragment(ring, skb);
 if (unlikely(err == -ENOKEY)) {


  ieee80211_free_txskb(dev->wl->hw, skb);
  err = 0;
  goto out;
 }
 if (unlikely(err)) {
  b43err(dev->wl, "DMA tx mapping failure\n");
  goto out;
 }
 if ((free_slots(ring) < TX_SLOTS_PER_FRAME) ||
     should_inject_overflow(ring)) {

  unsigned int skb_mapping = skb_get_queue_mapping(skb);
  ieee80211_stop_queue(dev->wl->hw, skb_mapping);
  dev->wl->tx_queue_stopped[skb_mapping] = 1;
  ring->stopped = 1;
  if (b43_debug(dev, B43_DBG_DMAVERBOSE)) {
   b43dbg(dev->wl, "Stopped TX ring %d\n", ring->index);
  }
 }
out:

 return err;
}
