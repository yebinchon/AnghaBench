
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_bss_conf {scalar_t__ enable_beacon; int ibss_creator; } ;
struct ieee80211_vif {struct ieee80211_bss_conf bss_conf; } ;
struct ath_beacon_config {int enable_beacon; scalar_t__ beacon_interval; } ;
struct ath_softc {int nbcnvifs; int ps_flags; int sc_flags; int sc_pm_lock; TYPE_1__* sc_ah; struct ath_beacon_config cur_beacon_conf; } ;
struct TYPE_2__ {scalar_t__ opmode; } ;


 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_IBSS ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int PS_BEACON_SYNC ;
 int PS_WAIT_FOR_BEACON ;
 int SC_OP_BEACONS ;
 int ath9k_cache_beacon_config (struct ath_softc*,struct ieee80211_bss_conf*) ;
 int ath9k_set_beacon (struct ath_softc*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ath9k_beacon_config(struct ath_softc *sc, struct ieee80211_vif *vif,
    u32 changed)
{
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;
 struct ath_beacon_config *cur_conf = &sc->cur_beacon_conf;
 unsigned long flags;
 bool skip_beacon = 0;

 if (sc->sc_ah->opmode == NL80211_IFTYPE_STATION) {
  ath9k_cache_beacon_config(sc, bss_conf);
  ath9k_set_beacon(sc);
  set_bit(SC_OP_BEACONS, &sc->sc_flags);
  return;

 }





 if (changed & BSS_CHANGED_BEACON_ENABLED) {
  if (!bss_conf->enable_beacon &&
      (sc->nbcnvifs <= 1)) {
   cur_conf->enable_beacon = 0;
  } else if (bss_conf->enable_beacon) {
   cur_conf->enable_beacon = 1;
   ath9k_cache_beacon_config(sc, bss_conf);
  }
 }





 if (cur_conf->beacon_interval) {





  if ((changed & BSS_CHANGED_IBSS) && !bss_conf->ibss_creator &&
      bss_conf->enable_beacon) {
   spin_lock_irqsave(&sc->sc_pm_lock, flags);
   sc->ps_flags |= PS_BEACON_SYNC | PS_WAIT_FOR_BEACON;
   spin_unlock_irqrestore(&sc->sc_pm_lock, flags);
   skip_beacon = 1;
  } else {
   ath9k_set_beacon(sc);
  }





  if (cur_conf->enable_beacon && !skip_beacon)
   set_bit(SC_OP_BEACONS, &sc->sc_flags);
  else
   clear_bit(SC_OP_BEACONS, &sc->sc_flags);
 }
}
