
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct il_rx_buf {int * page; } ;
struct il_priv {int alloc_rxb_page; int hw; TYPE_2__* cfg; int is_open; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le16 ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int sw_crypto; } ;


 int D_DROP (char*) ;
 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int IL_ERR (char*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int ieee80211_rx (int ,struct sk_buff*) ;
 scalar_t__ il_set_decrypted_flag (struct il_priv*,struct ieee80211_hdr*,int ,struct ieee80211_rx_status*) ;
 int il_update_stats (struct il_priv*,int,int ,int ) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;
 int rxb_addr (struct il_rx_buf*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int *,void*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
il4965_pass_packet_to_mac80211(struct il_priv *il, struct ieee80211_hdr *hdr,
          u16 len, u32 ampdu_status, struct il_rx_buf *rxb,
          struct ieee80211_rx_status *stats)
{
 struct sk_buff *skb;
 __le16 fc = hdr->frame_control;


 if (unlikely(!il->is_open)) {
  D_DROP("Dropping packet while interface is not open.\n");
  return;
 }


 if (!il->cfg->mod_params->sw_crypto &&
     il_set_decrypted_flag(il, hdr, ampdu_status, stats))
  return;

 skb = dev_alloc_skb(128);
 if (!skb) {
  IL_ERR("dev_alloc_skb failed\n");
  return;
 }

 skb_add_rx_frag(skb, 0, rxb->page, (void *)hdr - rxb_addr(rxb), len,
   len);

 il_update_stats(il, 0, fc, len);
 memcpy(IEEE80211_SKB_RXCB(skb), stats, sizeof(*stats));

 ieee80211_rx(il->hw, skb);
 il->alloc_rxb_page--;
 rxb->page = ((void*)0);
}
