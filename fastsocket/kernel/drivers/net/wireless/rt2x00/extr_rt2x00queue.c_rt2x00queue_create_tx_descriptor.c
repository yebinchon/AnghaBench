
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txentry_desc {scalar_t__ retry_limit; int rate_mode; int flags; int header_length; int length; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct rt2x00_rate {int flags; } ;
struct rt2x00_dev {scalar_t__ long_retry; int cap_flags; int hw; } ;
struct ieee80211_tx_rate {scalar_t__ count; int flags; } ;
struct TYPE_2__ {scalar_t__ rts_cts_rate_idx; struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rate {int hw_value; } ;
struct ieee80211_hdr {int frame_control; } ;


 int DEV_RATE_OFDM ;
 int ENTRY_TXD_ACK ;
 int ENTRY_TXD_BURST ;
 int ENTRY_TXD_CTS_FRAME ;
 int ENTRY_TXD_FIRST_FRAGMENT ;
 int ENTRY_TXD_MORE_FRAG ;
 int ENTRY_TXD_REQ_TIMESTAMP ;
 int ENTRY_TXD_RETRY_MODE ;
 int ENTRY_TXD_RTS_FRAME ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ;
 int IEEE80211_TX_CTL_MORE_FRAMES ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_RC_GREEN_FIELD ;
 int IEEE80211_TX_RC_MCS ;
 int RATE_MODE_CCK ;
 int RATE_MODE_HT_GREENFIELD ;
 int RATE_MODE_HT_MIX ;
 int RATE_MODE_OFDM ;
 int REQUIRE_HT_TX_DESC ;
 int __set_bit (int ,int *) ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 struct ieee80211_rate* ieee80211_get_rts_cts_rate (int ,struct ieee80211_tx_info*) ;
 struct ieee80211_rate* ieee80211_get_tx_rate (int ,struct ieee80211_tx_info*) ;
 scalar_t__ ieee80211_has_morefrags (int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_cts (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 scalar_t__ ieee80211_is_rts (int ) ;
 int memset (struct txentry_desc*,int ,int) ;
 struct rt2x00_rate* rt2x00_get_rate (int ) ;
 int rt2x00crypto_create_tx_descriptor (struct rt2x00_dev*,struct sk_buff*,struct txentry_desc*) ;
 int rt2x00queue_create_tx_descriptor_ht (struct rt2x00_dev*,struct sk_buff*,struct txentry_desc*,struct ieee80211_sta*,struct rt2x00_rate const*) ;
 int rt2x00queue_create_tx_descriptor_plcp (struct rt2x00_dev*,struct sk_buff*,struct txentry_desc*,struct rt2x00_rate const*) ;
 int rt2x00queue_create_tx_descriptor_seq (struct rt2x00_dev*,struct sk_buff*,struct txentry_desc*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt2x00queue_create_tx_descriptor(struct rt2x00_dev *rt2x00dev,
          struct sk_buff *skb,
          struct txentry_desc *txdesc,
          struct ieee80211_sta *sta)
{
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct ieee80211_tx_rate *txrate = &tx_info->control.rates[0];
 struct ieee80211_rate *rate;
 const struct rt2x00_rate *hwrate = ((void*)0);

 memset(txdesc, 0, sizeof(*txdesc));




 txdesc->length = skb->len;
 txdesc->header_length = ieee80211_get_hdrlen_from_skb(skb);




 if (!(tx_info->flags & IEEE80211_TX_CTL_NO_ACK))
  __set_bit(ENTRY_TXD_ACK, &txdesc->flags);




 if (ieee80211_is_rts(hdr->frame_control) ||
     ieee80211_is_cts(hdr->frame_control)) {
  __set_bit(ENTRY_TXD_BURST, &txdesc->flags);
  if (ieee80211_is_rts(hdr->frame_control))
   __set_bit(ENTRY_TXD_RTS_FRAME, &txdesc->flags);
  else
   __set_bit(ENTRY_TXD_CTS_FRAME, &txdesc->flags);
  if (tx_info->control.rts_cts_rate_idx >= 0)
   rate =
       ieee80211_get_rts_cts_rate(rt2x00dev->hw, tx_info);
 }




 txdesc->retry_limit = tx_info->control.rates[0].count - 1;
 if (txdesc->retry_limit >= rt2x00dev->long_retry)
  __set_bit(ENTRY_TXD_RETRY_MODE, &txdesc->flags);




 if (ieee80211_has_morefrags(hdr->frame_control)) {
  __set_bit(ENTRY_TXD_BURST, &txdesc->flags);
  __set_bit(ENTRY_TXD_MORE_FRAG, &txdesc->flags);
 }




 if (tx_info->flags & IEEE80211_TX_CTL_MORE_FRAMES)
  __set_bit(ENTRY_TXD_BURST, &txdesc->flags);





 if (ieee80211_is_beacon(hdr->frame_control) ||
     ieee80211_is_probe_resp(hdr->frame_control))
  __set_bit(ENTRY_TXD_REQ_TIMESTAMP, &txdesc->flags);

 if ((tx_info->flags & IEEE80211_TX_CTL_FIRST_FRAGMENT) &&
     !test_bit(ENTRY_TXD_RTS_FRAME, &txdesc->flags))
  __set_bit(ENTRY_TXD_FIRST_FRAGMENT, &txdesc->flags);




 if (txrate->flags & IEEE80211_TX_RC_GREEN_FIELD)
  txdesc->rate_mode = RATE_MODE_HT_GREENFIELD;
 else if (txrate->flags & IEEE80211_TX_RC_MCS)
  txdesc->rate_mode = RATE_MODE_HT_MIX;
 else {
  rate = ieee80211_get_tx_rate(rt2x00dev->hw, tx_info);
  hwrate = rt2x00_get_rate(rate->hw_value);
  if (hwrate->flags & DEV_RATE_OFDM)
   txdesc->rate_mode = RATE_MODE_OFDM;
  else
   txdesc->rate_mode = RATE_MODE_CCK;
 }




 rt2x00crypto_create_tx_descriptor(rt2x00dev, skb, txdesc);
 rt2x00queue_create_tx_descriptor_seq(rt2x00dev, skb, txdesc);

 if (test_bit(REQUIRE_HT_TX_DESC, &rt2x00dev->cap_flags))
  rt2x00queue_create_tx_descriptor_ht(rt2x00dev, skb, txdesc,
         sta, hwrate);
 else
  rt2x00queue_create_tx_descriptor_plcp(rt2x00dev, skb, txdesc,
            hwrate);
}
