
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ath_vif {int primary_sta_vif; } ;
struct ath_softc {int nbcnvifs; int sc_flags; TYPE_1__* sc_ah; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {scalar_t__ opmode; } ;


 int CONFIG ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SC_OP_BEACONS ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;

bool ath9k_allow_beacon_config(struct ath_softc *sc, struct ieee80211_vif *vif)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_vif *avp = (void *)vif->drv_priv;

 if (sc->sc_ah->opmode == NL80211_IFTYPE_AP) {
  if ((vif->type != NL80211_IFTYPE_AP) ||
      (sc->nbcnvifs > 1)) {
   ath_dbg(common, CONFIG,
    "An AP interface is already present !\n");
   return 0;
  }
 }

 if (sc->sc_ah->opmode == NL80211_IFTYPE_STATION) {
  if ((vif->type == NL80211_IFTYPE_STATION) &&
      test_bit(SC_OP_BEACONS, &sc->sc_flags) &&
      !avp->primary_sta_vif) {
   ath_dbg(common, CONFIG,
    "Beacon already configured for a station interface\n");
   return 0;
  }
 }

 return 1;
}
