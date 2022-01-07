
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {size_t band; int antenna; size_t rate_idx; int flag; scalar_t__ signal; int freq; int mactime; } ;
struct ath5k_rx_status {int rs_status; int rs_antenna; scalar_t__ rs_rate; scalar_t__ rs_rssi; int rs_tstamp; } ;
struct TYPE_5__ {int * antenna_rx; } ;
struct ath5k_hw {scalar_t__ opmode; int hw; TYPE_4__* curchan; TYPE_3__* sbands; TYPE_1__ stats; scalar_t__ ah_noise_floor; } ;
struct TYPE_8__ {size_t band; int center_freq; } ;
struct TYPE_7__ {TYPE_2__* bitrates; } ;
struct TYPE_6__ {scalar_t__ hw_value_short; } ;


 int AR5K_RXERR_MIC ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int RX_FLAG_MACTIME_END ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_SHORTPRE ;
 int ath5k_check_ibss_tsf (struct ath5k_hw*,struct sk_buff*,struct ieee80211_rx_status*) ;
 int ath5k_extend_tsf (struct ath5k_hw*,int ) ;
 size_t ath5k_hw_to_driver_rix (struct ath5k_hw*,scalar_t__) ;
 int ath5k_remove_padding (struct sk_buff*) ;
 int ath5k_rx_decrypted (struct ath5k_hw*,struct sk_buff*,struct ath5k_rx_status*) ;
 int ath5k_update_beacon_rssi (struct ath5k_hw*,struct sk_buff*,scalar_t__) ;
 int ieee80211_rx (int ,struct sk_buff*) ;
 int trace_ath5k_rx (struct ath5k_hw*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ath5k_receive_frame(struct ath5k_hw *ah, struct sk_buff *skb,
      struct ath5k_rx_status *rs)
{
 struct ieee80211_rx_status *rxs;

 ath5k_remove_padding(skb);

 rxs = IEEE80211_SKB_RXCB(skb);

 rxs->flag = 0;
 if (unlikely(rs->rs_status & AR5K_RXERR_MIC))
  rxs->flag |= RX_FLAG_MMIC_ERROR;
 rxs->mactime = ath5k_extend_tsf(ah, rs->rs_tstamp);
 rxs->flag |= RX_FLAG_MACTIME_END;

 rxs->freq = ah->curchan->center_freq;
 rxs->band = ah->curchan->band;

 rxs->signal = ah->ah_noise_floor + rs->rs_rssi;

 rxs->antenna = rs->rs_antenna;

 if (rs->rs_antenna > 0 && rs->rs_antenna < 5)
  ah->stats.antenna_rx[rs->rs_antenna]++;
 else
  ah->stats.antenna_rx[0]++;

 rxs->rate_idx = ath5k_hw_to_driver_rix(ah, rs->rs_rate);
 rxs->flag |= ath5k_rx_decrypted(ah, skb, rs);

 if (rxs->rate_idx >= 0 && rs->rs_rate ==
     ah->sbands[ah->curchan->band].bitrates[rxs->rate_idx].hw_value_short)
  rxs->flag |= RX_FLAG_SHORTPRE;

 trace_ath5k_rx(ah, skb);

 ath5k_update_beacon_rssi(ah, skb, rs->rs_rssi);


 if (ah->opmode == NL80211_IFTYPE_ADHOC)
  ath5k_check_ibss_tsf(ah, skb, rxs);

 ieee80211_rx(ah->hw, skb);
}
