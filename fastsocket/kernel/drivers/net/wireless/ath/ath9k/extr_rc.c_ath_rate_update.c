
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ath_softc {TYPE_2__* hw; int sc_ah; } ;
struct ath_rate_priv {int ht_cap; } ;
struct TYPE_3__ {int chandef; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;


 int CONFIG ;
 int IEEE80211_RC_BW_CHANGED ;
 int ath9k_hw_common (int ) ;
 int ath_dbg (int ,int ,char*,int ) ;
 int ath_rc_build_ht_caps (struct ath_softc*,struct ieee80211_sta*) ;
 int ath_rc_init (struct ath_softc*,void*) ;
 int cfg80211_get_chandef_type (int *) ;

__attribute__((used)) static void ath_rate_update(void *priv, struct ieee80211_supported_band *sband,
       struct ieee80211_sta *sta, void *priv_sta,
       u32 changed)
{
 struct ath_softc *sc = priv;
 struct ath_rate_priv *ath_rc_priv = priv_sta;

 if (changed & IEEE80211_RC_BW_CHANGED) {
  ath_rc_priv->ht_cap = ath_rc_build_ht_caps(sc, sta);
  ath_rc_init(sc, priv_sta);

  ath_dbg(ath9k_hw_common(sc->sc_ah), CONFIG,
   "Operating HT Bandwidth changed to: %d\n",
   cfg80211_get_chandef_type(&sc->hw->conf.chandef));
 }
}
