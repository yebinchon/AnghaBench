
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_nvm_data {int valid_rx_ant; } ;
struct iwl_cfg {scalar_t__ rx_with_siso_diversity; } ;
struct TYPE_3__ {int rx_mcs_map; int tx_mcs_map; } ;
struct ieee80211_sta_vht_cap {int vht_supported; int cap; TYPE_1__ vht_mcs; } ;
struct TYPE_4__ {scalar_t__ amsdu_size_8K; } ;


 int IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT ;
 int IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_7991 ;
 int IEEE80211_VHT_CAP_RXSTBC_1 ;
 int IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN ;
 int IEEE80211_VHT_CAP_SHORT_GI_80 ;
 int IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE ;
 int IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN ;
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ;
 int IEEE80211_VHT_MCS_SUPPORT_0_9 ;
 int cpu_to_le16 (int) ;
 TYPE_2__ iwlwifi_mod_params ;

__attribute__((used)) static void iwl_init_vht_hw_capab(const struct iwl_cfg *cfg,
      struct iwl_nvm_data *data,
      struct ieee80211_sta_vht_cap *vht_cap)
{


 vht_cap->vht_supported = 1;

 vht_cap->cap = IEEE80211_VHT_CAP_SHORT_GI_80 |
         IEEE80211_VHT_CAP_RXSTBC_1 |
         IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE |
         7 << IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT;

 if (iwlwifi_mod_params.amsdu_size_8K)
  vht_cap->cap |= IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_7991;

 vht_cap->vht_mcs.rx_mcs_map =
  cpu_to_le16(IEEE80211_VHT_MCS_SUPPORT_0_9 << 0 |
       IEEE80211_VHT_MCS_SUPPORT_0_9 << 2 |
       IEEE80211_VHT_MCS_NOT_SUPPORTED << 4 |
       IEEE80211_VHT_MCS_NOT_SUPPORTED << 6 |
       IEEE80211_VHT_MCS_NOT_SUPPORTED << 8 |
       IEEE80211_VHT_MCS_NOT_SUPPORTED << 10 |
       IEEE80211_VHT_MCS_NOT_SUPPORTED << 12 |
       IEEE80211_VHT_MCS_NOT_SUPPORTED << 14);

 if (data->valid_rx_ant == 1 || cfg->rx_with_siso_diversity) {
  vht_cap->cap |= IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN |
    IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN;

  vht_cap->vht_mcs.rx_mcs_map |=
   cpu_to_le16(IEEE80211_VHT_MCS_NOT_SUPPORTED << 2);
 }

 vht_cap->vht_mcs.tx_mcs_map = vht_cap->vht_mcs.rx_mcs_map;
}
