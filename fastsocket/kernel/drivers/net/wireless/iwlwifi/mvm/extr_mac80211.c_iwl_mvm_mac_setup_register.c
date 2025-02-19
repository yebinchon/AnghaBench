
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct iwl_mvm_vif {int dummy; } ;
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {struct ieee80211_hw* hw; TYPE_9__* trans; TYPE_7__* fw; int rts_threshold; TYPE_4__* nvm_data; TYPE_1__* addresses; } ;
struct ieee80211_hw {int flags; char* rate_control_algorithm; int sta_data_size; int vif_data_size; int chanctx_data_size; TYPE_11__* wiphy; int max_listen_interval; int offchannel_tx_hw_queue; int queues; } ;
struct TYPE_26__ {int dev; TYPE_8__* ops; int hw_id; } ;
struct TYPE_25__ {scalar_t__ d3_resume; scalar_t__ d3_suspend; } ;
struct TYPE_19__ {int flags; int max_probe_length; } ;
struct TYPE_24__ {TYPE_6__* img; TYPE_2__ ucode_capa; } ;
struct TYPE_23__ {TYPE_5__* sec; } ;
struct TYPE_22__ {scalar_t__ len; } ;
struct TYPE_21__ {int n_hw_addrs; TYPE_3__* bands; int * hw_addr; } ;
struct TYPE_20__ {scalar_t__ n_channels; } ;
struct TYPE_18__ {int * addr; } ;
struct TYPE_17__ {scalar_t__ power_scheme; } ;
struct TYPE_16__ {int sw_crypto; } ;
struct TYPE_14__ {int flags; int * tcp; int pattern_max_len; int pattern_min_len; int n_patterns; } ;
struct TYPE_15__ {int flags; int max_remain_on_channel_duration; int n_addresses; int max_scan_ie_len; int features; TYPE_10__ wowlan; int hw_version; TYPE_3__** bands; int max_scan_ssids; TYPE_1__* addresses; int interface_modes; } ;


 int BIT (int ) ;
 int ETH_ALEN ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int IEEE80211_HW_AMPDU_AGGREGATION ;
 int IEEE80211_HW_MFP_CAPABLE ;
 int IEEE80211_HW_QUEUE_CONTROL ;
 int IEEE80211_HW_REPORTS_TX_ACK_STATUS ;
 int IEEE80211_HW_SIGNAL_DBM ;
 int IEEE80211_HW_SPECTRUM_MGMT ;
 int IEEE80211_HW_SUPPORTS_DYNAMIC_PS ;
 int IEEE80211_HW_SUPPORTS_PS ;
 int IEEE80211_HW_TIMING_BEACON_ONLY ;
 int IEEE80211_HW_WANT_MONITOR_VIF ;
 int IEEE80211_MAX_RTS_THRESHOLD ;
 int IWL_CONN_MAX_LISTEN_INTERVAL ;
 int IWL_MVM_FIRST_AGG_QUEUE ;
 int IWL_MVM_MAX_ADDRESSES ;
 int IWL_MVM_OFFCHANNEL_QUEUE ;
 scalar_t__ IWL_POWER_SCHEME_CAM ;
 int IWL_UCODE_TLV_FLAGS_MFP ;
 size_t IWL_UCODE_WOWLAN ;
 int IWL_WOWLAN_MAX_PATTERNS ;
 int IWL_WOWLAN_MAX_PATTERN_LEN ;
 int IWL_WOWLAN_MIN_PATTERN_LEN ;
 int NL80211_FEATURE_P2P_GO_CTWIN ;
 int NL80211_FEATURE_P2P_GO_OPPPS ;
 int NL80211_IFTYPE_STATION ;
 int PROBE_OPTION_MAX ;
 int WIPHY_FLAG_CUSTOM_REGULATORY ;
 int WIPHY_FLAG_DISABLE_BEACON_HINTS ;
 int WIPHY_FLAG_IBSS_RSN ;
 int WIPHY_FLAG_PS_ON_BY_DEFAULT ;
 int WIPHY_WOWLAN_4WAY_HANDSHAKE ;
 int WIPHY_WOWLAN_DISCONNECT ;
 int WIPHY_WOWLAN_EAP_IDENTITY_REQ ;
 int WIPHY_WOWLAN_GTK_REKEY_FAILURE ;
 int WIPHY_WOWLAN_MAGIC_PKT ;
 int WIPHY_WOWLAN_RFKILL_RELEASE ;
 int WIPHY_WOWLAN_SUPPORTS_GTK_REKEY ;
 scalar_t__ device_can_wakeup (int ) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 int iwl_mvm_leds_exit (struct iwl_mvm*) ;
 int iwl_mvm_leds_init (struct iwl_mvm*) ;
 int iwl_mvm_wowlan_tcp_support ;
 TYPE_13__ iwlmvm_mod_params ;
 TYPE_12__ iwlwifi_mod_params ;
 int memcpy (int *,int *,int ) ;
 int min (int ,int) ;

int iwl_mvm_mac_setup_register(struct iwl_mvm *mvm)
{
 struct ieee80211_hw *hw = mvm->hw;
 int num_mac, ret, i;


 hw->flags = IEEE80211_HW_SIGNAL_DBM |
      IEEE80211_HW_SPECTRUM_MGMT |
      IEEE80211_HW_REPORTS_TX_ACK_STATUS |
      IEEE80211_HW_QUEUE_CONTROL |
      IEEE80211_HW_WANT_MONITOR_VIF |
      IEEE80211_HW_SUPPORTS_PS |
      IEEE80211_HW_SUPPORTS_DYNAMIC_PS |
      IEEE80211_HW_AMPDU_AGGREGATION |
      IEEE80211_HW_TIMING_BEACON_ONLY;

 hw->queues = IWL_MVM_FIRST_AGG_QUEUE;
 hw->offchannel_tx_hw_queue = IWL_MVM_OFFCHANNEL_QUEUE;
 hw->rate_control_algorithm = "iwl-mvm-rs";






 if (mvm->fw->ucode_capa.flags & IWL_UCODE_TLV_FLAGS_MFP &&
     !iwlwifi_mod_params.sw_crypto)
  hw->flags |= IEEE80211_HW_MFP_CAPABLE;

 hw->sta_data_size = sizeof(struct iwl_mvm_sta);
 hw->vif_data_size = sizeof(struct iwl_mvm_vif);
 hw->chanctx_data_size = sizeof(struct iwl_mvm_phy_ctxt);

 hw->wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION);

 hw->wiphy->flags |= WIPHY_FLAG_CUSTOM_REGULATORY |
       WIPHY_FLAG_DISABLE_BEACON_HINTS |
       WIPHY_FLAG_IBSS_RSN;

 hw->wiphy->max_remain_on_channel_duration = 10000;
 hw->max_listen_interval = IWL_CONN_MAX_LISTEN_INTERVAL;


 memcpy(mvm->addresses[0].addr, mvm->nvm_data->hw_addr, ETH_ALEN);
 hw->wiphy->addresses = mvm->addresses;
 hw->wiphy->n_addresses = 1;


 num_mac = (mvm->nvm_data->n_hw_addrs > 1) ?
  min(IWL_MVM_MAX_ADDRESSES, mvm->nvm_data->n_hw_addrs) : 1;

 for (i = 1; i < num_mac; i++) {
  memcpy(mvm->addresses[i].addr, mvm->addresses[i-1].addr,
         ETH_ALEN);
  mvm->addresses[i].addr[5]++;
  hw->wiphy->n_addresses++;
 }


 hw->wiphy->max_scan_ie_len =
  mvm->fw->ucode_capa.max_probe_length - 24 - 34;
 hw->wiphy->max_scan_ssids = PROBE_OPTION_MAX;

 if (mvm->nvm_data->bands[IEEE80211_BAND_2GHZ].n_channels)
  hw->wiphy->bands[IEEE80211_BAND_2GHZ] =
   &mvm->nvm_data->bands[IEEE80211_BAND_2GHZ];
 if (mvm->nvm_data->bands[IEEE80211_BAND_5GHZ].n_channels)
  hw->wiphy->bands[IEEE80211_BAND_5GHZ] =
   &mvm->nvm_data->bands[IEEE80211_BAND_5GHZ];

 hw->wiphy->hw_version = mvm->trans->hw_id;

 if (iwlmvm_mod_params.power_scheme != IWL_POWER_SCHEME_CAM)
  hw->wiphy->flags |= WIPHY_FLAG_PS_ON_BY_DEFAULT;
 else
  hw->wiphy->flags &= ~WIPHY_FLAG_PS_ON_BY_DEFAULT;

 hw->wiphy->features |= NL80211_FEATURE_P2P_GO_CTWIN |
          NL80211_FEATURE_P2P_GO_OPPPS;

 mvm->rts_threshold = IEEE80211_MAX_RTS_THRESHOLD;
 ret = iwl_mvm_leds_init(mvm);
 if (ret)
  return ret;

 ret = ieee80211_register_hw(mvm->hw);
 if (ret)
  iwl_mvm_leds_exit(mvm);

 return ret;
}
