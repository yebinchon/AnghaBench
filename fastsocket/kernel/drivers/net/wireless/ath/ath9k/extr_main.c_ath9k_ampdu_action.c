
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int sc_ah; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
 int ath9k_hw_common (int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_err (int ,char*) ;
 int ath_tx_aggr_resume (struct ath_softc*,struct ieee80211_sta*,int ) ;
 int ath_tx_aggr_start (struct ath_softc*,struct ieee80211_sta*,int ,int *) ;
 int ath_tx_aggr_stop (struct ath_softc*,struct ieee80211_sta*,int ) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

__attribute__((used)) static int ath9k_ampdu_action(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         enum ieee80211_ampdu_mlme_action action,
         struct ieee80211_sta *sta,
         u16 tid, u16 *ssn, u8 buf_size)
{
 struct ath_softc *sc = hw->priv;
 bool flush = 0;
 int ret = 0;

 local_bh_disable();

 switch (action) {
 case 134:
  break;
 case 133:
  break;
 case 131:
  ath9k_ps_wakeup(sc);
  ret = ath_tx_aggr_start(sc, sta, tid, ssn);
  if (!ret)
   ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  ath9k_ps_restore(sc);
  break;
 case 129:
 case 128:
  flush = 1;
 case 130:
  ath9k_ps_wakeup(sc);
  ath_tx_aggr_stop(sc, sta, tid);
  if (!flush)
   ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  ath9k_ps_restore(sc);
  break;
 case 132:
  ath9k_ps_wakeup(sc);
  ath_tx_aggr_resume(sc, sta, tid);
  ath9k_ps_restore(sc);
  break;
 default:
  ath_err(ath9k_hw_common(sc->sc_ah), "Unknown AMPDU action\n");
 }

 local_bh_enable();

 return ret;
}
