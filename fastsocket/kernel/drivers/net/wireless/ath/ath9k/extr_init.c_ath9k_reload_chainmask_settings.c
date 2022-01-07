
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath_softc {TYPE_2__* sbands; TYPE_1__* sc_ah; } ;
struct TYPE_6__ {int hw_caps; } ;
struct TYPE_5__ {int ht_cap; } ;
struct TYPE_4__ {TYPE_3__ caps; } ;


 int ATH9K_HW_CAP_2GHZ ;
 int ATH9K_HW_CAP_5GHZ ;
 int ATH9K_HW_CAP_HT ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int setup_ht_cap (struct ath_softc*,int *) ;

void ath9k_reload_chainmask_settings(struct ath_softc *sc)
{
 if (!(sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_HT))
  return;

 if (sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_2GHZ)
  setup_ht_cap(sc, &sc->sbands[IEEE80211_BAND_2GHZ].ht_cap);
 if (sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_5GHZ)
  setup_ht_cap(sc, &sc->sbands[IEEE80211_BAND_5GHZ].ht_cap);
}
