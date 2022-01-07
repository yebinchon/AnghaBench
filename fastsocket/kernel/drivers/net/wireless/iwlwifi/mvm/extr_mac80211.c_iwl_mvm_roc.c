
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; int phy_ctxt_roc; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel {int hw_value; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;


 int EINVAL ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*,...) ;
 int IWL_ERR (struct iwl_mvm*,char*,int ) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int NL80211_CHAN_NO_HT ;
 int NL80211_IFTYPE_P2P_DEVICE ;
 int cfg80211_chandef_create (struct cfg80211_chan_def*,struct ieee80211_channel*,int ) ;
 int iwl_mvm_phy_ctxt_changed (struct iwl_mvm*,int *,struct cfg80211_chan_def*,int,int) ;
 int iwl_mvm_start_p2p_roc (struct iwl_mvm*,struct ieee80211_vif*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_roc(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_channel *channel,
         int duration,
         enum ieee80211_roc_type type)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct cfg80211_chan_def chandef;
 int ret;

 if (vif->type != NL80211_IFTYPE_P2P_DEVICE) {
  IWL_ERR(mvm, "vif isn't a P2P_DEVICE: %d\n", vif->type);
  return -EINVAL;
 }

 IWL_DEBUG_MAC80211(mvm, "enter (%d, %d, %d)\n", channel->hw_value,
      duration, type);

 mutex_lock(&mvm->mutex);

 cfg80211_chandef_create(&chandef, channel, NL80211_CHAN_NO_HT);
 ret = iwl_mvm_phy_ctxt_changed(mvm, &mvm->phy_ctxt_roc,
           &chandef, 1, 1);


 ret = iwl_mvm_start_p2p_roc(mvm, vif, duration, type);

 mutex_unlock(&mvm->mutex);
 IWL_DEBUG_MAC80211(mvm, "leave\n");

 return ret;
}
