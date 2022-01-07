
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int type; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int mutex; int nvifs; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int CONFIG ;
 int ath9k_beacon_assign_slot (struct ath_softc*,struct ieee80211_vif*) ;
 int ath9k_calculate_summary_state (struct ieee80211_hw*,struct ieee80211_vif*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 scalar_t__ ath9k_uses_beacons (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath9k_add_interface(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);

 mutex_lock(&sc->mutex);

 ath_dbg(common, CONFIG, "Attach a VIF of type: %d\n", vif->type);
 sc->nvifs++;

 ath9k_ps_wakeup(sc);
 ath9k_calculate_summary_state(hw, vif);
 ath9k_ps_restore(sc);

 if (ath9k_uses_beacons(vif->type))
  ath9k_beacon_assign_slot(sc, vif);

 mutex_unlock(&sc->mutex);
 return 0;
}
