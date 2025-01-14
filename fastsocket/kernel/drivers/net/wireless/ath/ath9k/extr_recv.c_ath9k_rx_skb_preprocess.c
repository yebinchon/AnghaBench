
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_rx_status {int flag; int antenna; scalar_t__ signal; int freq; int band; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_7__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_8__ {int discard_next; } ;
struct ath_softc {TYPE_4__ rx; struct ath_hw* sc_ah; struct ieee80211_hw* hw; } ;
struct ath_rx_status {int rs_more; scalar_t__ rs_moreaggr; int rs_antenna; scalar_t__ rs_rssi; } ;
struct ath_hw {scalar_t__ noise; } ;
struct ath_common {int dummy; } ;
struct TYPE_5__ {int center_freq; int band; } ;


 int EINVAL ;
 int RX_FLAG_MACTIME_END ;
 int RX_FLAG_NO_SIGNAL_VAL ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ ath9k_process_rate (struct ath_common*,struct ieee80211_hw*,struct ath_rx_status*,struct ieee80211_rx_status*) ;
 int ath9k_process_rssi (struct ath_common*,struct ieee80211_hw*,struct ieee80211_hdr*,struct ath_rx_status*) ;
 int ath9k_rx_accept (struct ath_common*,struct ieee80211_hdr*,struct ieee80211_rx_status*,struct ath_rx_status*,int*) ;

__attribute__((used)) static int ath9k_rx_skb_preprocess(struct ath_softc *sc,
       struct ieee80211_hdr *hdr,
       struct ath_rx_status *rx_stats,
       struct ieee80211_rx_status *rx_status,
       bool *decrypt_error)
{
 struct ieee80211_hw *hw = sc->hw;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 bool discard_current = sc->rx.discard_next;

 sc->rx.discard_next = rx_stats->rs_more;
 if (discard_current)
  return -EINVAL;





 if (!ath9k_rx_accept(common, hdr, rx_status, rx_stats, decrypt_error))
  return -EINVAL;


 if (rx_stats->rs_more)
  return 0;

 ath9k_process_rssi(common, hw, hdr, rx_stats);

 if (ath9k_process_rate(common, hw, rx_stats, rx_status))
  return -EINVAL;

 rx_status->band = hw->conf.chandef.chan->band;
 rx_status->freq = hw->conf.chandef.chan->center_freq;
 rx_status->signal = ah->noise + rx_stats->rs_rssi;
 rx_status->antenna = rx_stats->rs_antenna;
 rx_status->flag |= RX_FLAG_MACTIME_END;
 if (rx_stats->rs_moreaggr)
  rx_status->flag |= RX_FLAG_NO_SIGNAL_VAL;

 sc->rx.discard_next = 0;
 return 0;
}
