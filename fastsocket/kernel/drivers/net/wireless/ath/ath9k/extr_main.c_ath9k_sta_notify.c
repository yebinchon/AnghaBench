
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int dummy; } ;
struct ath_node {int sleeping; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;




 int ath_tx_aggr_sleep (struct ieee80211_sta*,struct ath_softc*,struct ath_node*) ;
 int ath_tx_aggr_wakeup (struct ath_softc*,struct ath_node*) ;

__attribute__((used)) static void ath9k_sta_notify(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    enum sta_notify_cmd cmd,
    struct ieee80211_sta *sta)
{
 struct ath_softc *sc = hw->priv;
 struct ath_node *an = (struct ath_node *) sta->drv_priv;

 if (!sta->ht_cap.ht_supported)
  return;

 switch (cmd) {
 case 128:
  an->sleeping = 1;
  ath_tx_aggr_sleep(sta, sc, an);
  break;
 case 129:
  an->sleeping = 0;
  ath_tx_aggr_wakeup(sc, an);
  break;
 }
}
