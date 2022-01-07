
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_rate_control {struct sk_buff* skb; } ;
struct ieee80211_tx_rate {scalar_t__ count; scalar_t__ idx; int flags; } ;
struct TYPE_8__ {struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct TYPE_9__ {int cap; } ;
struct ieee80211_sta {TYPE_2__ ht_cap; } ;
struct ieee80211_hdr {int seq_ctrl; int frame_control; } ;
struct ath_softc {TYPE_5__* hw; } ;
struct ath_rate_table {TYPE_6__* info; } ;
struct ath_rate_priv {struct ath_rate_table* rate_table; } ;
typedef int __le16 ;
struct TYPE_11__ {TYPE_3__* chan; } ;
struct TYPE_14__ {TYPE_4__ chandef; } ;
struct TYPE_13__ {int dot11rate; int phy; } ;
struct TYPE_12__ {TYPE_7__ conf; } ;
struct TYPE_10__ {scalar_t__ band; } ;


 scalar_t__ ATH_TXMAXTRY ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 int IEEE80211_HT_CAP_LDPC_CODING ;
 int IEEE80211_HT_CAP_TX_STBC ;
 int IEEE80211_SCTL_FRAG ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_LDPC ;
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ;
 int IEEE80211_TX_CTL_STBC_SHIFT ;
 int WLAN_RC_PHY_HT_20_SS ;
 int WLAN_RC_PHY_HT_40_SS ;
 int ath_rc_get_highest_rix (struct ath_rate_priv*,int*) ;
 int ath_rc_get_lower_rix (struct ath_rate_priv*,int,int*) ;
 int ath_rc_rate_set_rtscts (struct ath_softc*,struct ath_rate_table const*,struct ieee80211_tx_info*) ;
 int ath_rc_rate_set_series (struct ath_rate_table const*,struct ieee80211_tx_rate*,struct ieee80211_tx_rate_control*,int,int,int) ;
 scalar_t__ conf_is_ht (TYPE_7__*) ;
 scalar_t__ ieee80211_has_morefrags (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ rate_control_send_low (struct ieee80211_sta*,void*,struct ieee80211_tx_rate_control*) ;

__attribute__((used)) static void ath_get_rate(void *priv, struct ieee80211_sta *sta, void *priv_sta,
    struct ieee80211_tx_rate_control *txrc)
{
 struct ath_softc *sc = priv;
 struct ath_rate_priv *ath_rc_priv = priv_sta;
 const struct ath_rate_table *rate_table;
 struct sk_buff *skb = txrc->skb;
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
 struct ieee80211_tx_rate *rates = tx_info->control.rates;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 __le16 fc = hdr->frame_control;
 u8 try_per_rate, i = 0, rix;
 int is_probe = 0;

 if (rate_control_send_low(sta, priv_sta, txrc))
  return;
 try_per_rate = 4;

 rate_table = ath_rc_priv->rate_table;
 rix = ath_rc_get_highest_rix(ath_rc_priv, &is_probe);

 if (conf_is_ht(&sc->hw->conf) &&
     (sta->ht_cap.cap & IEEE80211_HT_CAP_LDPC_CODING))
  tx_info->flags |= IEEE80211_TX_CTL_LDPC;

 if (conf_is_ht(&sc->hw->conf) &&
     (sta->ht_cap.cap & IEEE80211_HT_CAP_TX_STBC))
  tx_info->flags |= (1 << IEEE80211_TX_CTL_STBC_SHIFT);

 if (is_probe) {




  ath_rc_rate_set_series(rate_table, &rates[i++], txrc,
           1, rix, 0);




  ath_rc_get_lower_rix(ath_rc_priv, rix, &rix);
  ath_rc_rate_set_series(rate_table, &rates[i++], txrc,
           try_per_rate, rix, 0);

  tx_info->flags |= IEEE80211_TX_CTL_RATE_CTRL_PROBE;
 } else {



  ath_rc_rate_set_series(rate_table, &rates[i++], txrc,
           try_per_rate, rix, 0);
 }

 for ( ; i < 4; i++) {



  if (i + 1 == 4)
   try_per_rate = 8;

  ath_rc_get_lower_rix(ath_rc_priv, rix, &rix);




  ath_rc_rate_set_series(rate_table, &rates[i], txrc,
           try_per_rate, rix, 1);
 }
 if ((sc->hw->conf.chandef.chan->band == IEEE80211_BAND_2GHZ) &&
     (conf_is_ht(&sc->hw->conf))) {
  u8 dot11rate = rate_table->info[rix].dot11rate;
  u8 phy = rate_table->info[rix].phy;
  if (i == 4 &&
      ((dot11rate == 2 && phy == WLAN_RC_PHY_HT_40_SS) ||
       (dot11rate == 3 && phy == WLAN_RC_PHY_HT_20_SS))) {
   rates[3].idx = rates[2].idx;
   rates[3].flags = rates[2].flags;
  }
 }
 if (ieee80211_has_morefrags(fc) ||
     (le16_to_cpu(hdr->seq_ctrl) & IEEE80211_SCTL_FRAG)) {
  rates[1].count = rates[2].count = rates[3].count = 0;
  rates[1].idx = rates[2].idx = rates[3].idx = 0;
  rates[0].count = ATH_TXMAXTRY;
 }

 ath_rc_rate_set_rtscts(sc, rate_table, tx_info);
}
