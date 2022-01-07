
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int mutex; int sc_ah; } ;


 int ath9k_hw_gettsf64 (int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u64 ath9k_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;
 u64 tsf;

 mutex_lock(&sc->mutex);
 ath9k_ps_wakeup(sc);
 tsf = ath9k_hw_gettsf64(sc->sc_ah);
 ath9k_ps_restore(sc);
 mutex_unlock(&sc->mutex);

 return tsf;
}
