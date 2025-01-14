
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct iwl_nvm_data {int sku_cap_11n_enable; int valid_rx_ant; int valid_tx_ant; } ;
struct iwl_cfg {TYPE_1__* ht_params; scalar_t__ rx_with_siso_diversity; } ;
struct TYPE_5__ {int* rx_mask; int tx_params; int rx_highest; } ;
struct ieee80211_sta_ht_cap {int ht_supported; TYPE_2__ mcs; int cap; int ampdu_density; int ampdu_factor; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_6__ {scalar_t__ amsdu_size_8K; } ;
struct TYPE_4__ {int ht40_bands; scalar_t__ ht_greenfield_support; } ;


 int BIT (int) ;
 int IEEE80211_HT_CAP_DSSSCCK40 ;
 int IEEE80211_HT_CAP_GRN_FLD ;
 int IEEE80211_HT_CAP_MAX_AMSDU ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_HT_MAX_AMPDU_64K ;
 int IEEE80211_HT_MCS_RX_HIGHEST_MASK ;
 int IEEE80211_HT_MCS_TX_DEFINED ;
 int IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT ;
 int IEEE80211_HT_MCS_TX_RX_DIFF ;
 int IEEE80211_HT_MPDU_DENSITY_4 ;
 int MAX_BIT_RATE_20_MHZ ;
 int MAX_BIT_RATE_40_MHZ ;
 int WARN_ON (int) ;
 int cpu_to_le16 (int) ;
 int hweight8 (int ) ;
 TYPE_3__ iwlwifi_mod_params ;

void iwl_init_ht_hw_capab(const struct iwl_cfg *cfg,
     struct iwl_nvm_data *data,
     struct ieee80211_sta_ht_cap *ht_info,
     enum ieee80211_band band)
{
 int max_bit_rate = 0;
 u8 rx_chains;
 u8 tx_chains;

 tx_chains = hweight8(data->valid_tx_ant);
 if (cfg->rx_with_siso_diversity)
  rx_chains = 1;
 else
  rx_chains = hweight8(data->valid_rx_ant);

 if (!(data->sku_cap_11n_enable) || !cfg->ht_params) {
  ht_info->ht_supported = 0;
  return;
 }

 ht_info->ht_supported = 1;
 ht_info->cap = IEEE80211_HT_CAP_DSSSCCK40;

 if (iwlwifi_mod_params.amsdu_size_8K)
  ht_info->cap |= IEEE80211_HT_CAP_MAX_AMSDU;

 ht_info->ampdu_factor = IEEE80211_HT_MAX_AMPDU_64K;
 ht_info->ampdu_density = IEEE80211_HT_MPDU_DENSITY_4;

 ht_info->mcs.rx_mask[0] = 0xFF;
 if (rx_chains >= 2)
  ht_info->mcs.rx_mask[1] = 0xFF;
 if (rx_chains >= 3)
  ht_info->mcs.rx_mask[2] = 0xFF;

 if (cfg->ht_params->ht_greenfield_support)
  ht_info->cap |= IEEE80211_HT_CAP_GRN_FLD;
 ht_info->cap |= IEEE80211_HT_CAP_SGI_20;

 max_bit_rate = MAX_BIT_RATE_20_MHZ;

 if (cfg->ht_params->ht40_bands & BIT(band)) {
  ht_info->cap |= IEEE80211_HT_CAP_SUP_WIDTH_20_40;
  ht_info->cap |= IEEE80211_HT_CAP_SGI_40;
  ht_info->mcs.rx_mask[4] = 0x01;
  max_bit_rate = MAX_BIT_RATE_40_MHZ;
 }


 max_bit_rate *= rx_chains;
 WARN_ON(max_bit_rate & ~IEEE80211_HT_MCS_RX_HIGHEST_MASK);
 ht_info->mcs.rx_highest = cpu_to_le16(max_bit_rate);


 ht_info->mcs.tx_params = IEEE80211_HT_MCS_TX_DEFINED;
 if (tx_chains != rx_chains) {
  ht_info->mcs.tx_params |= IEEE80211_HT_MCS_TX_RX_DIFF;
  ht_info->mcs.tx_params |= ((tx_chains - 1) <<
    IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT);
 }
}
