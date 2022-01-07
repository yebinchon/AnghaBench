
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int spectral_mode; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int (* spectral_scan_trigger ) (struct ath_hw*) ;} ;


 int ATH9K_RX_FILTER_PHYERR ;
 int ATH9K_RX_FILTER_PHYRADAR ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_getrxfilter (struct ath_hw*) ;
 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int ath9k_hw_setrxfilter (struct ath_hw*,int) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_spectral_scan_config (struct ieee80211_hw*,int ) ;
 int ath_err (struct ath_common*,char*) ;
 int stub1 (struct ath_hw*) ;

void ath9k_spectral_scan_trigger(struct ieee80211_hw *hw)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 u32 rxfilter;

 if (!ath9k_hw_ops(ah)->spectral_scan_trigger) {
  ath_err(common, "spectrum analyzer not implemented on this hardware\n");
  return;
 }

 ath9k_ps_wakeup(sc);
 rxfilter = ath9k_hw_getrxfilter(ah);
 ath9k_hw_setrxfilter(ah, rxfilter |
     ATH9K_RX_FILTER_PHYRADAR |
     ATH9K_RX_FILTER_PHYERR);






 ath9k_spectral_scan_config(hw, sc->spectral_mode);
 ath9k_hw_ops(ah)->spectral_scan_trigger(ah);
 ath9k_ps_restore(sc);
}
