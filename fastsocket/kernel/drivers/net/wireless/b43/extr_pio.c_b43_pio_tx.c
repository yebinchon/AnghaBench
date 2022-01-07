
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_5__ {struct b43_pio_txqueue* tx_queue_mcast; } ;
struct b43_wldev {TYPE_2__* wl; TYPE_1__ pio; } ;
struct b43_pio_txqueue {unsigned int buffer_size; scalar_t__ free_packet_slots; unsigned int buffer_used; int stopped; int queue_prio; } ;
struct TYPE_6__ {int hw; } ;


 int B43_WARN_ON (int) ;
 int EBUSY ;
 int ENOBUFS ;
 int ENOKEY ;
 int IEEE80211_FCTL_MOREDATA ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ;
 unsigned int b43_txhdr_size (struct b43_wldev*) ;
 int b43dbg (TYPE_2__*,char*) ;
 int b43err (TYPE_2__*,char*) ;
 int b43warn (TYPE_2__*,char*) ;
 int cpu_to_le16 (int ) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 int ieee80211_stop_queue (int ,int ) ;
 int pio_tx_frame (struct b43_pio_txqueue*,struct sk_buff*) ;
 unsigned int roundup (int,int) ;
 struct b43_pio_txqueue* select_queue_by_priority (struct b43_wldev*,int ) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int b43_pio_tx(struct b43_wldev *dev, struct sk_buff *skb)
{
 struct b43_pio_txqueue *q;
 struct ieee80211_hdr *hdr;
 unsigned int hdrlen, total_len;
 int err = 0;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

 hdr = (struct ieee80211_hdr *)skb->data;

 if (info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {

  q = dev->pio.tx_queue_mcast;


  hdr->frame_control |= cpu_to_le16(IEEE80211_FCTL_MOREDATA);
 } else {

  q = select_queue_by_priority(dev, skb_get_queue_mapping(skb));
 }

 hdrlen = b43_txhdr_size(dev);
 total_len = roundup(skb->len + hdrlen, 4);

 if (unlikely(total_len > q->buffer_size)) {
  err = -ENOBUFS;
  b43dbg(dev->wl, "PIO: TX packet longer than queue.\n");
  goto out;
 }
 if (unlikely(q->free_packet_slots == 0)) {
  err = -ENOBUFS;
  b43warn(dev->wl, "PIO: TX packet overflow.\n");
  goto out;
 }
 B43_WARN_ON(q->buffer_used > q->buffer_size);

 if (total_len > (q->buffer_size - q->buffer_used)) {

  err = -EBUSY;
  ieee80211_stop_queue(dev->wl->hw, skb_get_queue_mapping(skb));
  q->stopped = 1;
  goto out;
 }




 q->queue_prio = skb_get_queue_mapping(skb);

 err = pio_tx_frame(q, skb);
 if (unlikely(err == -ENOKEY)) {


  ieee80211_free_txskb(dev->wl->hw, skb);
  err = 0;
  goto out;
 }
 if (unlikely(err)) {
  b43err(dev->wl, "PIO transmission failure\n");
  goto out;
 }

 B43_WARN_ON(q->buffer_used > q->buffer_size);
 if (((q->buffer_size - q->buffer_used) < roundup(2 + 2 + 6, 4)) ||
     (q->free_packet_slots == 0)) {

  ieee80211_stop_queue(dev->wl->hw, skb_get_queue_mapping(skb));
  q->stopped = 1;
 }

out:
 return err;
}
