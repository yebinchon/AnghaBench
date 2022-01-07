
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int mutex; int sc_ah; } ;


 int ath9k_hw_reset_tsf (int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_reset_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;

 mutex_lock(&sc->mutex);

 ath9k_ps_wakeup(sc);
 ath9k_hw_reset_tsf(sc->sc_ah);
 ath9k_ps_restore(sc);

 mutex_unlock(&sc->mutex);
}
