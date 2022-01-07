
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* trans; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int device_set_wakeup_enable (int ,int) ;

void iwl_mvm_set_wakeup(struct ieee80211_hw *hw, bool enabled)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);

 device_set_wakeup_enable(mvm->trans->dev, enabled);
}
