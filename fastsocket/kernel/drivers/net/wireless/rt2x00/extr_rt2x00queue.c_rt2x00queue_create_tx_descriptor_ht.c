
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int mcs; int ba_size; int stbc; void* txop; int wcid; int mpdu_density; } ;
struct TYPE_8__ {TYPE_3__ ht; } ;
struct txentry_desc {TYPE_4__ u; int flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct rt2x00_sta {int wcid; } ;
struct rt2x00_rate {int mcs; } ;
struct rt2x00_dev {int flags; } ;
struct ieee80211_tx_rate {int flags; int idx; } ;
struct TYPE_5__ {struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct TYPE_6__ {int ampdu_density; } ;
struct ieee80211_sta {scalar_t__ smps_mode; TYPE_2__ ht_cap; } ;
struct ieee80211_hdr {int frame_control; } ;


 int CONFIG_HT_DISABLED ;
 int ENTRY_TXD_HT_AMPDU ;
 int ENTRY_TXD_HT_BW_40 ;
 int ENTRY_TXD_HT_MIMO_PS ;
 int ENTRY_TXD_HT_SHORT_GI ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ IEEE80211_SMPS_DYNAMIC ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ;
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ;
 int IEEE80211_TX_CTL_STBC ;
 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_DUP_DATA ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int IEEE80211_TX_RC_USE_SHORT_PREAMBLE ;
 void* TXOP_BACKOFF ;
 void* TXOP_HTTXOP ;
 void* TXOP_SIFS ;
 int __set_bit (int ,int *) ;
 int ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 int rt2x00_get_rate_mcs (int ) ;
 struct rt2x00_sta* sta_to_rt2x00_sta (struct ieee80211_sta*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt2x00queue_create_tx_descriptor_ht(struct rt2x00_dev *rt2x00dev,
      struct sk_buff *skb,
      struct txentry_desc *txdesc,
      struct ieee80211_sta *sta,
      const struct rt2x00_rate *hwrate)
{
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 struct ieee80211_tx_rate *txrate = &tx_info->control.rates[0];
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct rt2x00_sta *sta_priv = ((void*)0);

 if (sta) {
  txdesc->u.ht.mpdu_density =
      sta->ht_cap.ampdu_density;

  sta_priv = sta_to_rt2x00_sta(sta);
  txdesc->u.ht.wcid = sta_priv->wcid;
 }





 if (txrate->flags & IEEE80211_TX_RC_MCS) {
  txdesc->u.ht.mcs = txrate->idx;





  if (sta && txdesc->u.ht.mcs > 7 &&
      sta->smps_mode == IEEE80211_SMPS_DYNAMIC)
   __set_bit(ENTRY_TXD_HT_MIMO_PS, &txdesc->flags);
 } else {
  txdesc->u.ht.mcs = rt2x00_get_rate_mcs(hwrate->mcs);
  if (txrate->flags & IEEE80211_TX_RC_USE_SHORT_PREAMBLE)
   txdesc->u.ht.mcs |= 0x08;
 }

 if (test_bit(CONFIG_HT_DISABLED, &rt2x00dev->flags)) {
  if (!(tx_info->flags & IEEE80211_TX_CTL_FIRST_FRAGMENT))
   txdesc->u.ht.txop = TXOP_SIFS;
  else
   txdesc->u.ht.txop = TXOP_BACKOFF;


  return;
 }

 txdesc->u.ht.ba_size = 7;




 if (tx_info->flags & IEEE80211_TX_CTL_STBC)
  txdesc->u.ht.stbc = 1;





 if (tx_info->flags & IEEE80211_TX_CTL_AMPDU &&
     !(tx_info->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE))
  __set_bit(ENTRY_TXD_HT_AMPDU, &txdesc->flags);





 if (txrate->flags & IEEE80211_TX_RC_40_MHZ_WIDTH ||
     txrate->flags & IEEE80211_TX_RC_DUP_DATA)
  __set_bit(ENTRY_TXD_HT_BW_40, &txdesc->flags);
 if (txrate->flags & IEEE80211_TX_RC_SHORT_GI)
  __set_bit(ENTRY_TXD_HT_SHORT_GI, &txdesc->flags);
 if (ieee80211_is_mgmt(hdr->frame_control) &&
     !ieee80211_is_beacon(hdr->frame_control))
  txdesc->u.ht.txop = TXOP_BACKOFF;
 else if (!(tx_info->flags & IEEE80211_TX_CTL_FIRST_FRAGMENT))
  txdesc->u.ht.txop = TXOP_SIFS;
 else
  txdesc->u.ht.txop = TXOP_HTTXOP;
}
