
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_sta_modify_sleep_tx_count (struct iwl_mvm*,struct ieee80211_sta*,int,int) ;

__attribute__((used)) static void
iwl_mvm_mac_allow_buffered_frames(struct ieee80211_hw *hw,
      struct ieee80211_sta *sta, u16 tid,
      int num_frames,
      enum ieee80211_frame_release_type reason,
      bool more_data)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);







 iwl_mvm_sta_modify_sleep_tx_count(mvm, sta, reason, num_frames);
}
