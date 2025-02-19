
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct iwl_mvm_vif {int * phy_ctxt; int bcast_sta; } ;
struct iwl_mvm {int vif_count; int mutex; TYPE_3__* hw; struct ieee80211_vif* p2p_device_vif; int phy_ctxt_roc; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_7__ {TYPE_2__* wiphy; } ;
struct TYPE_6__ {TYPE_1__** bands; } ;
struct TYPE_5__ {struct ieee80211_channel* channels; } ;


 size_t IEEE80211_BAND_2GHZ ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*,...) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int NL80211_CHAN_NO_HT ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int cfg80211_chandef_create (struct cfg80211_chan_def*,struct ieee80211_channel*,int ) ;
 int ieee80211_iterate_active_interfaces (TYPE_3__*,int ,int ,struct iwl_mvm*) ;
 int ieee80211_iterate_active_interfaces_atomic (TYPE_3__*,int ,int ,struct iwl_mvm*) ;
 int iwl_mvm_add_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*,int *) ;
 int iwl_mvm_allocate_int_sta (struct iwl_mvm*,int *,int ) ;
 int iwl_mvm_binding_add_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_add (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_init (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_release (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_remove (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_get_queues_mask (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_phy_ctxt_add (struct iwl_mvm*,int *,struct cfg80211_chan_def*,int,int) ;
 int iwl_mvm_phy_ctxt_remove (struct iwl_mvm*,int *) ;
 int iwl_mvm_pm_disable_iterator ;
 int iwl_mvm_power_update_iterator ;
 int iwl_mvm_power_update_mode (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_vif_dbgfs_register (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_mac_add_interface(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;







 mutex_lock(&mvm->mutex);


 ret = iwl_mvm_mac_ctxt_init(mvm, vif);
 if (ret)
  goto out_unlock;
 if (vif->type == NL80211_IFTYPE_AP) {
  u32 qmask = iwl_mvm_mac_get_queues_mask(mvm, vif);
  ret = iwl_mvm_allocate_int_sta(mvm, &mvmvif->bcast_sta,
            qmask);
  if (ret) {
   IWL_ERR(mvm, "Failed to allocate bcast sta\n");
   goto out_release;
  }

  goto out_unlock;
 }
 if (vif->type != NL80211_IFTYPE_P2P_DEVICE)
  mvm->vif_count++;
 if (mvm->vif_count > 1) {
  IWL_DEBUG_MAC80211(mvm,
       "Disable power on existing interfaces\n");
  ieee80211_iterate_active_interfaces_atomic(
         mvm->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         iwl_mvm_pm_disable_iterator, mvm);
 }

 ret = iwl_mvm_mac_ctxt_add(mvm, vif);
 if (ret)
  goto out_release;





 iwl_mvm_power_update_mode(mvm, vif);






 if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {
  struct ieee80211_channel *chan;
  struct cfg80211_chan_def chandef;

  mvmvif->phy_ctxt = &mvm->phy_ctxt_roc;






  chan = &mvm->hw->wiphy->bands[IEEE80211_BAND_2GHZ]->channels[0];
  cfg80211_chandef_create(&chandef, chan, NL80211_CHAN_NO_HT);
  ret = iwl_mvm_phy_ctxt_add(mvm, mvmvif->phy_ctxt,
        &chandef, 1, 1);
  if (ret)
   goto out_remove_mac;

  ret = iwl_mvm_binding_add_vif(mvm, vif);
  if (ret)
   goto out_remove_phy;

  ret = iwl_mvm_add_bcast_sta(mvm, vif, &mvmvif->bcast_sta);
  if (ret)
   goto out_unbind;



  mvm->p2p_device_vif = vif;
 }

 iwl_mvm_vif_dbgfs_register(mvm, vif);
 goto out_unlock;

 out_unbind:
 iwl_mvm_binding_remove_vif(mvm, vif);
 out_remove_phy:
 iwl_mvm_phy_ctxt_remove(mvm, mvmvif->phy_ctxt);
 out_remove_mac:
 mvmvif->phy_ctxt = ((void*)0);
 iwl_mvm_mac_ctxt_remove(mvm, vif);
 out_release:






 if (vif->type != NL80211_IFTYPE_P2P_DEVICE)
  mvm->vif_count--;
 IWL_DEBUG_MAC80211(mvm, "Currently %d interfaces active\n",
      mvm->vif_count);
 if (mvm->vif_count == 1) {
  ieee80211_iterate_active_interfaces(
     mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_power_update_iterator, mvm);
 }
 iwl_mvm_mac_ctxt_release(mvm, vif);
 out_unlock:
 mutex_unlock(&mvm->mutex);

 return ret;
}
