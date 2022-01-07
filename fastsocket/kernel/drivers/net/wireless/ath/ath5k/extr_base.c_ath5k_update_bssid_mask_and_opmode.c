
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int addr; } ;
struct ath_common {int macaddr; } ;
struct ath5k_vif_iter_data {int found_active; int need_set_hw_addr; int n_stas; int active_mac; int opmode; int mask; int hw_macaddr; } ;
struct ath5k_hw {int filter_flags; int bssidmask; int opmode; int hw; } ;


 int AR5K_RX_FILTER_PROM ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*,int ,...) ;
 int ATH5K_DEBUG_MODE ;
 int ETH_ALEN ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int NL80211_IFTYPE_STATION ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 scalar_t__ ath5k_hw_hasbssidmask (struct ath5k_hw*) ;
 int ath5k_hw_set_bssid_mask (struct ath5k_hw*,int ) ;
 int ath5k_hw_set_lladdr (struct ath5k_hw*,int ) ;
 int ath5k_hw_set_opmode (struct ath5k_hw*,int ) ;
 int ath5k_hw_set_rx_filter (struct ath5k_hw*,int ) ;
 int ath5k_vif_iter (struct ath5k_vif_iter_data*,int ,struct ieee80211_vif*) ;
 int ath_opmode_to_string (int ) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int (*) (struct ath5k_vif_iter_data*,int ,struct ieee80211_vif*),struct ath5k_vif_iter_data*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int *,int,int ) ;

void
ath5k_update_bssid_mask_and_opmode(struct ath5k_hw *ah,
       struct ieee80211_vif *vif)
{
 struct ath_common *common = ath5k_hw_common(ah);
 struct ath5k_vif_iter_data iter_data;
 u32 rfilt;





 iter_data.hw_macaddr = common->macaddr;
 memset(&iter_data.mask, 0xff, ETH_ALEN);
 iter_data.found_active = 0;
 iter_data.need_set_hw_addr = 1;
 iter_data.opmode = NL80211_IFTYPE_UNSPECIFIED;
 iter_data.n_stas = 0;

 if (vif)
  ath5k_vif_iter(&iter_data, vif->addr, vif);


 ieee80211_iterate_active_interfaces_atomic(
  ah->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  ath5k_vif_iter, &iter_data);
 memcpy(ah->bssidmask, iter_data.mask, ETH_ALEN);

 ah->opmode = iter_data.opmode;
 if (ah->opmode == NL80211_IFTYPE_UNSPECIFIED)

  ah->opmode = NL80211_IFTYPE_STATION;

 ath5k_hw_set_opmode(ah, ah->opmode);
 ATH5K_DBG(ah, ATH5K_DEBUG_MODE, "mode setup opmode %d (%s)\n",
    ah->opmode, ath_opmode_to_string(ah->opmode));

 if (iter_data.need_set_hw_addr && iter_data.found_active)
  ath5k_hw_set_lladdr(ah, iter_data.active_mac);

 if (ath5k_hw_hasbssidmask(ah))
  ath5k_hw_set_bssid_mask(ah, ah->bssidmask);


 if (iter_data.n_stas > 1) {




  ah->filter_flags |= AR5K_RX_FILTER_PROM;
 }

 rfilt = ah->filter_flags;
 ath5k_hw_set_rx_filter(ah, rfilt);
 ATH5K_DBG(ah, ATH5K_DEBUG_MODE, "RX filter 0x%x\n", rfilt);
}
