
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rtl8180_tx_ring {int idx; int entries; int queue; struct rtl8180_tx_desc* desc; } ;
struct rtl8180_tx_desc {int flags2; void* flags; int retry_limit; void* frame_len; void* tx_buf; int plcp_len; int rts_duration; } ;
struct rtl8180_priv {int seqno; TYPE_3__* map; int lock; scalar_t__ r8185; int vif; int pdev; struct rtl8180_tx_ring* tx_ring; } ;
struct TYPE_8__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct ieee80211_hdr {int seq_ctrl; } ;
typedef int dma_addr_t ;
typedef int __le16 ;
struct TYPE_12__ {int bitrate; } ;
struct TYPE_11__ {int hw_value; } ;
struct TYPE_10__ {int hw_value; int bitrate; } ;
struct TYPE_9__ {int TX_DMA_POLLING; } ;
struct TYPE_7__ {int flags; int count; int idx; } ;


 int DIV_ROUND_UP (int,int) ;
 int IEEE80211_SCTL_FRAG ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_ASSIGN_SEQ ;
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ;
 int IEEE80211_TX_RC_USE_CTS_PROTECT ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 int PCI_DMA_TODEVICE ;
 int RTL818X_TX_DESC_FLAG_CTS ;
 int RTL818X_TX_DESC_FLAG_DMA ;
 int RTL818X_TX_DESC_FLAG_FS ;
 int RTL818X_TX_DESC_FLAG_LS ;
 int RTL818X_TX_DESC_FLAG_NO_ENC ;
 int RTL818X_TX_DESC_FLAG_OWN ;
 int RTL818X_TX_DESC_FLAG_RTS ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 TYPE_6__* ieee80211_get_alt_retry_rate (struct ieee80211_hw*,struct ieee80211_tx_info*,int ) ;
 TYPE_5__* ieee80211_get_rts_cts_rate (struct ieee80211_hw*,struct ieee80211_tx_info*) ;
 TYPE_4__* ieee80211_get_tx_rate (struct ieee80211_hw*,struct ieee80211_tx_info*) ;
 int ieee80211_rts_duration (struct ieee80211_hw*,int ,int,struct ieee80211_tx_info*) ;
 int ieee80211_stop_queue (struct ieee80211_hw*,unsigned int) ;
 int pci_map_single (int ,scalar_t__,int,int ) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;
 unsigned int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtl8180_tx(struct ieee80211_hw *dev,
         struct ieee80211_tx_control *control,
         struct sk_buff *skb)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct rtl8180_priv *priv = dev->priv;
 struct rtl8180_tx_ring *ring;
 struct rtl8180_tx_desc *entry;
 unsigned long flags;
 unsigned int idx, prio;
 dma_addr_t mapping;
 u32 tx_flags;
 u8 rc_flags;
 u16 plcp_len = 0;
 __le16 rts_duration = 0;

 prio = skb_get_queue_mapping(skb);
 ring = &priv->tx_ring[prio];

 mapping = pci_map_single(priv->pdev, skb->data,
     skb->len, PCI_DMA_TODEVICE);

 tx_flags = RTL818X_TX_DESC_FLAG_OWN | RTL818X_TX_DESC_FLAG_FS |
     RTL818X_TX_DESC_FLAG_LS |
     (ieee80211_get_tx_rate(dev, info)->hw_value << 24) |
     skb->len;

 if (priv->r8185)
  tx_flags |= RTL818X_TX_DESC_FLAG_DMA |
       RTL818X_TX_DESC_FLAG_NO_ENC;

 rc_flags = info->control.rates[0].flags;
 if (rc_flags & IEEE80211_TX_RC_USE_RTS_CTS) {
  tx_flags |= RTL818X_TX_DESC_FLAG_RTS;
  tx_flags |= ieee80211_get_rts_cts_rate(dev, info)->hw_value << 19;
 } else if (rc_flags & IEEE80211_TX_RC_USE_CTS_PROTECT) {
  tx_flags |= RTL818X_TX_DESC_FLAG_CTS;
  tx_flags |= ieee80211_get_rts_cts_rate(dev, info)->hw_value << 19;
 }

 if (rc_flags & IEEE80211_TX_RC_USE_RTS_CTS)
  rts_duration = ieee80211_rts_duration(dev, priv->vif, skb->len,
            info);

 if (!priv->r8185) {
  unsigned int remainder;

  plcp_len = DIV_ROUND_UP(16 * (skb->len + 4),
    (ieee80211_get_tx_rate(dev, info)->bitrate * 2) / 10);
  remainder = (16 * (skb->len + 4)) %
       ((ieee80211_get_tx_rate(dev, info)->bitrate * 2) / 10);
  if (remainder <= 6)
   plcp_len |= 1 << 15;
 }

 spin_lock_irqsave(&priv->lock, flags);

 if (info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ) {
  if (info->flags & IEEE80211_TX_CTL_FIRST_FRAGMENT)
   priv->seqno += 0x10;
  hdr->seq_ctrl &= cpu_to_le16(IEEE80211_SCTL_FRAG);
  hdr->seq_ctrl |= cpu_to_le16(priv->seqno);
 }

 idx = (ring->idx + skb_queue_len(&ring->queue)) % ring->entries;
 entry = &ring->desc[idx];

 entry->rts_duration = rts_duration;
 entry->plcp_len = cpu_to_le16(plcp_len);
 entry->tx_buf = cpu_to_le32(mapping);
 entry->frame_len = cpu_to_le32(skb->len);
 entry->flags2 = info->control.rates[1].idx >= 0 ?
  ieee80211_get_alt_retry_rate(dev, info, 0)->bitrate << 4 : 0;
 entry->retry_limit = info->control.rates[0].count;
 entry->flags = cpu_to_le32(tx_flags);
 __skb_queue_tail(&ring->queue, skb);
 if (ring->entries - skb_queue_len(&ring->queue) < 2)
  ieee80211_stop_queue(dev, prio);

 spin_unlock_irqrestore(&priv->lock, flags);

 rtl818x_iowrite8(priv, &priv->map->TX_DMA_POLLING, (1 << (prio + 4)));
}
