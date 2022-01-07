
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_bss_conf {int aid; int bssid; } ;
struct ieee80211_vif {int addr; struct ieee80211_bss_conf bss_conf; scalar_t__ drv_priv; } ;
struct ath_vif {int primary_sta_vif; } ;
struct ath_softc {int ps_flags; TYPE_2__* sc_ah; int sc_pm_lock; void* last_rssi; int sc_flags; } ;
struct ath_common {int curbssid; int curaid; } ;
struct TYPE_5__ {void* avgbrssi; } ;
struct TYPE_6__ {scalar_t__ opmode; TYPE_1__ stats; } ;


 void* ATH_RSSI_DUMMY_MARKER ;
 int CONFIG ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int PS_BEACON_SYNC ;
 int PS_WAIT_FOR_BEACON ;
 int SC_OP_PRIM_STA_VIF ;
 struct ath_common* ath9k_hw_common (TYPE_2__*) ;
 scalar_t__ ath9k_hw_mci_is_enabled (TYPE_2__*) ;
 int ath9k_hw_write_associd (TYPE_2__*) ;
 int ath9k_mci_update_wlan_channels (struct ath_softc*,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ath9k_set_assoc_state(struct ath_softc *sc,
      struct ieee80211_vif *vif)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_vif *avp = (void *)vif->drv_priv;
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;
 unsigned long flags;

 set_bit(SC_OP_PRIM_STA_VIF, &sc->sc_flags);
 avp->primary_sta_vif = 1;







 if (sc->sc_ah->opmode != NL80211_IFTYPE_STATION)
  return;

 memcpy(common->curbssid, bss_conf->bssid, ETH_ALEN);
 common->curaid = bss_conf->aid;
 ath9k_hw_write_associd(sc->sc_ah);

 sc->last_rssi = ATH_RSSI_DUMMY_MARKER;
 sc->sc_ah->stats.avgbrssi = ATH_RSSI_DUMMY_MARKER;

 spin_lock_irqsave(&sc->sc_pm_lock, flags);
 sc->ps_flags |= PS_BEACON_SYNC | PS_WAIT_FOR_BEACON;
 spin_unlock_irqrestore(&sc->sc_pm_lock, flags);

 if (ath9k_hw_mci_is_enabled(sc->sc_ah))
  ath9k_mci_update_wlan_channels(sc, 0);

 ath_dbg(common, CONFIG,
  "Primary Station interface: %pM, BSSID: %pM\n",
  vif->addr, common->curbssid);
}
