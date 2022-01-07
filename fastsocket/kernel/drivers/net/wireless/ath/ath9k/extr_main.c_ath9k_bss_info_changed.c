
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ieee80211_bss_conf {scalar_t__ use_short_slot; scalar_t__ enable_beacon; scalar_t__ aid; int bssid; int assoc; } ;
struct ath_vif {int primary_sta_vif; } ;
struct TYPE_2__ {int slottime; int updateslot; } ;
struct ath_softc {int mutex; TYPE_1__ beacon; struct ath_hw* sc_ah; int sc_flags; int hw; } ;
struct ath_hw {scalar_t__ opmode; int slottime; } ;
struct ath_common {scalar_t__ curaid; int curbssid; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_IBSS ;
 int CHECK_ANI ;
 int CONFIG ;
 int ETH_ALEN ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SC_OP_BEACONS ;
 int SC_OP_PRIM_STA_VIF ;
 int UPDATE ;
 scalar_t__ ath9k_allow_beacon_config (struct ath_softc*,struct ieee80211_vif*) ;
 int ath9k_beacon_config (struct ath_softc*,struct ieee80211_vif*,int) ;
 int ath9k_bss_assoc_iter ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_init_global_settings (struct ath_hw*) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_write_associd (struct ath_hw*) ;
 int ath9k_mci_update_wlan_channels (struct ath_softc*,int) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_set_tsfadjust (struct ath_softc*,struct ieee80211_vif*) ;
 int ath_check_ani (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ) ;
 int clear_bit (int ,int *) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath_softc*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_bss_info_changed(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ieee80211_bss_conf *bss_conf,
       u32 changed)
{





 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_vif *avp = (void *)vif->drv_priv;
 int slottime;

 ath9k_ps_wakeup(sc);
 mutex_lock(&sc->mutex);

 if (changed & BSS_CHANGED_ASSOC) {
  ath_dbg(common, CONFIG, "BSSID %pM Changed ASSOC %d\n",
   bss_conf->bssid, bss_conf->assoc);

  if (avp->primary_sta_vif && !bss_conf->assoc) {
   clear_bit(SC_OP_PRIM_STA_VIF, &sc->sc_flags);
   avp->primary_sta_vif = 0;

   if (ah->opmode == NL80211_IFTYPE_STATION)
    clear_bit(SC_OP_BEACONS, &sc->sc_flags);
  }

  ieee80211_iterate_active_interfaces_atomic(
   sc->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
   ath9k_bss_assoc_iter, sc);

  if (!test_bit(SC_OP_PRIM_STA_VIF, &sc->sc_flags) &&
      ah->opmode == NL80211_IFTYPE_STATION) {
   memset(common->curbssid, 0, ETH_ALEN);
   common->curaid = 0;
   ath9k_hw_write_associd(sc->sc_ah);
   if (ath9k_hw_mci_is_enabled(sc->sc_ah))
    ath9k_mci_update_wlan_channels(sc, 1);
  }
 }

 if (changed & BSS_CHANGED_IBSS) {
  memcpy(common->curbssid, bss_conf->bssid, ETH_ALEN);
  common->curaid = bss_conf->aid;
  ath9k_hw_write_associd(sc->sc_ah);
 }

 if ((changed & BSS_CHANGED_BEACON_ENABLED) ||
     (changed & BSS_CHANGED_BEACON_INT)) {
  if (ah->opmode == NL80211_IFTYPE_AP &&
      bss_conf->enable_beacon)
   ath9k_set_tsfadjust(sc, vif);
  if (ath9k_allow_beacon_config(sc, vif))
   ath9k_beacon_config(sc, vif, changed);
 }

 if (changed & BSS_CHANGED_ERP_SLOT) {
  if (bss_conf->use_short_slot)
   slottime = 9;
  else
   slottime = 20;
  if (vif->type == NL80211_IFTYPE_AP) {





   sc->beacon.slottime = slottime;
   sc->beacon.updateslot = UPDATE;
  } else {
   ah->slottime = slottime;
   ath9k_hw_init_global_settings(ah);
  }
 }

 if (changed & (BSS_CHANGED_ASSOC | BSS_CHANGED_IBSS | BSS_CHANGED_BEACON_ENABLED))
  ath_check_ani(sc);

 mutex_unlock(&sc->mutex);
 ath9k_ps_restore(sc);


}
