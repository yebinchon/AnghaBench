
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct il_rx_pkt {int dummy; } ;
struct il_rx_buf {int * page; } ;
struct TYPE_3__ {int rx_page_order; } ;
struct il_priv {int alloc_rxb_page; int hw; int is_open; TYPE_1__ hw_params; } ;
struct il3945_rx_frame_hdr {scalar_t__ payload; int len; } ;
struct il3945_rx_frame_end {int status; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le16 ;
struct TYPE_4__ {int sw_crypto; } ;


 int D_DROP (char*) ;
 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 scalar_t__ IL39_RX_FRAME_SIZE ;
 int IL_ERR (char*) ;
 scalar_t__ IL_RX_DATA (struct il_rx_pkt*) ;
 struct il3945_rx_frame_end* IL_RX_END (struct il_rx_pkt*) ;
 struct il3945_rx_frame_hdr* IL_RX_HDR (struct il_rx_pkt*) ;
 scalar_t__ PAGE_SIZE ;
 struct sk_buff* dev_alloc_skb (int) ;
 int ieee80211_rx (int ,struct sk_buff*) ;
 TYPE_2__ il3945_mod_params ;
 int il_set_decrypted_flag (struct il_priv*,struct ieee80211_hdr*,int ,struct ieee80211_rx_status*) ;
 int il_update_stats (struct il_priv*,int,int ,scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int *,int,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
il3945_pass_packet_to_mac80211(struct il_priv *il, struct il_rx_buf *rxb,
          struct ieee80211_rx_status *stats)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)IL_RX_DATA(pkt);
 struct il3945_rx_frame_hdr *rx_hdr = IL_RX_HDR(pkt);
 struct il3945_rx_frame_end *rx_end = IL_RX_END(pkt);
 u16 len = le16_to_cpu(rx_hdr->len);
 struct sk_buff *skb;
 __le16 fc = hdr->frame_control;


 if (unlikely
     (len + IL39_RX_FRAME_SIZE >
      PAGE_SIZE << il->hw_params.rx_page_order)) {
  D_DROP("Corruption detected!\n");
  return;
 }


 if (unlikely(!il->is_open)) {
  D_DROP("Dropping packet while interface is not open.\n");
  return;
 }

 skb = dev_alloc_skb(128);
 if (!skb) {
  IL_ERR("dev_alloc_skb failed\n");
  return;
 }

 if (!il3945_mod_params.sw_crypto)
  il_set_decrypted_flag(il, (struct ieee80211_hdr *)rxb_addr(rxb),
          le32_to_cpu(rx_end->status), stats);

 skb_add_rx_frag(skb, 0, rxb->page,
   (void *)rx_hdr->payload - (void *)pkt, len,
   len);

 il_update_stats(il, 0, fc, len);
 memcpy(IEEE80211_SKB_RXCB(skb), stats, sizeof(*stats));

 ieee80211_rx(il->hw, skb);
 il->alloc_rxb_page--;
 rxb->page = ((void*)0);
}
