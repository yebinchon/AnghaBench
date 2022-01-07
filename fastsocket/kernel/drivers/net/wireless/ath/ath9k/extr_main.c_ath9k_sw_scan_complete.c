
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {scalar_t__ scanning; } ;



__attribute__((used)) static void ath9k_sw_scan_complete(struct ieee80211_hw *hw)
{
 struct ath_softc *sc = hw->priv;

 sc->scanning = 0;
}
