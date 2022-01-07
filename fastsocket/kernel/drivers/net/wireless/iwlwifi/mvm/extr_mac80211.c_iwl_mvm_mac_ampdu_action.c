
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct iwl_mvm {int mutex; TYPE_1__* nvm_data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
struct TYPE_4__ {int disable_11n; } ;
struct TYPE_3__ {int sku_cap_11n_enable; } ;


 int EACCES ;
 int EINVAL ;







 int IWL_DEBUG_HT (struct iwl_mvm*,char*,int ,int ,int) ;
 int IWL_DISABLE_HT_RXAGG ;
 int IWL_DISABLE_HT_TXAGG ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int WARN_ON_ONCE (int) ;
 int iwl_mvm_sta_rx_agg (struct iwl_mvm*,struct ieee80211_sta*,int ,int ,int) ;
 int iwl_mvm_sta_tx_agg_flush (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,int ) ;
 int iwl_mvm_sta_tx_agg_oper (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,int ,int ) ;
 int iwl_mvm_sta_tx_agg_start (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,int ,int *) ;
 int iwl_mvm_sta_tx_agg_stop (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,int ) ;
 TYPE_2__ iwlwifi_mod_params ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_mac_ampdu_action(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        enum ieee80211_ampdu_mlme_action action,
        struct ieee80211_sta *sta, u16 tid,
        u16 *ssn, u8 buf_size)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;

 IWL_DEBUG_HT(mvm, "A-MPDU action on addr %pM tid %d: action %d\n",
       sta->addr, tid, action);

 if (!(mvm->nvm_data->sku_cap_11n_enable))
  return -EACCES;

 mutex_lock(&mvm->mutex);

 switch (action) {
 case 134:
  if (iwlwifi_mod_params.disable_11n & IWL_DISABLE_HT_RXAGG) {
   ret = -EINVAL;
   break;
  }
  ret = iwl_mvm_sta_rx_agg(mvm, sta, tid, *ssn, 1);
  break;
 case 133:
  ret = iwl_mvm_sta_rx_agg(mvm, sta, tid, 0, 0);
  break;
 case 131:
  if (iwlwifi_mod_params.disable_11n & IWL_DISABLE_HT_TXAGG) {
   ret = -EINVAL;
   break;
  }
  ret = iwl_mvm_sta_tx_agg_start(mvm, vif, sta, tid, ssn);
  break;
 case 130:
  ret = iwl_mvm_sta_tx_agg_stop(mvm, vif, sta, tid);
  break;
 case 129:
 case 128:
  ret = iwl_mvm_sta_tx_agg_flush(mvm, vif, sta, tid);
  break;
 case 132:
  ret = iwl_mvm_sta_tx_agg_oper(mvm, vif, sta, tid, buf_size);
  break;
 default:
  WARN_ON_ONCE(1);
  ret = -EINVAL;
  break;
 }
 mutex_unlock(&mvm->mutex);

 return ret;
}
