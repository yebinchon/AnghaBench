
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int hw; int sc_flags; struct ath_hw* sc_ah; } ;
struct ath_hw {int opmode; int imask; } ;
struct ath_common {int bssidmask; } ;
struct ath9k_vif_iter_data {scalar_t__ naps; scalar_t__ nmeshes; scalar_t__ nadhocs; scalar_t__ nstations; scalar_t__ nwds; int mask; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int ATH9K_INT_TSFOOR ;
 int ETH_ALEN ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SC_OP_PRIM_STA_VIF ;
 int ath9k_calculate_iter_data (struct ieee80211_hw*,struct ieee80211_vif*,struct ath9k_vif_iter_data*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 int ath9k_hw_set_tsfadjust (struct ath_hw*,int) ;
 int ath9k_hw_setopmode (struct ath_hw*) ;
 int ath9k_sta_vif_iter ;
 int ath_hw_setbssidmask (struct ath_common*) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath_softc*) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_calculate_summary_state(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_vif_iter_data iter_data;
 enum nl80211_iftype old_opmode = ah->opmode;

 ath9k_calculate_iter_data(hw, vif, &iter_data);

 memcpy(common->bssidmask, iter_data.mask, ETH_ALEN);
 ath_hw_setbssidmask(common);

 if (iter_data.naps > 0) {
  ath9k_hw_set_tsfadjust(ah, 1);
  ah->opmode = NL80211_IFTYPE_AP;
 } else {
  ath9k_hw_set_tsfadjust(ah, 0);

  if (iter_data.nmeshes)
   ah->opmode = NL80211_IFTYPE_MESH_POINT;
  else if (iter_data.nwds)
   ah->opmode = NL80211_IFTYPE_AP;
  else if (iter_data.nadhocs)
   ah->opmode = NL80211_IFTYPE_ADHOC;
  else
   ah->opmode = NL80211_IFTYPE_STATION;
 }

 ath9k_hw_setopmode(ah);

 if ((iter_data.nstations + iter_data.nadhocs + iter_data.nmeshes) > 0)
  ah->imask |= ATH9K_INT_TSFOOR;
 else
  ah->imask &= ~ATH9K_INT_TSFOOR;

 ath9k_hw_set_interrupts(ah);





 if (ah->opmode == NL80211_IFTYPE_STATION &&
     old_opmode == NL80211_IFTYPE_AP &&
     test_bit(SC_OP_PRIM_STA_VIF, &sc->sc_flags)) {
  ieee80211_iterate_active_interfaces_atomic(
   sc->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
   ath9k_sta_vif_iter, sc);
 }
}
