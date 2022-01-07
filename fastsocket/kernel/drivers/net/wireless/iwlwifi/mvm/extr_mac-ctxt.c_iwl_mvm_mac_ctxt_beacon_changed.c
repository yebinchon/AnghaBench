
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iwl_mvm {int hw; } ;
struct ieee80211_vif {scalar_t__ type; } ;


 int ENOMEM ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int WARN_ON (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_beacon_get (int ,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_send_beacon (struct iwl_mvm*,struct ieee80211_vif*,struct sk_buff*) ;

int iwl_mvm_mac_ctxt_beacon_changed(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif)
{
 struct sk_buff *beacon;
 int ret;

 WARN_ON(vif->type != NL80211_IFTYPE_AP);

 beacon = ieee80211_beacon_get(mvm->hw, vif);
 if (!beacon)
  return -ENOMEM;

 ret = iwl_mvm_mac_ctxt_send_beacon(mvm, vif, beacon);
 dev_kfree_skb(beacon);
 return ret;
}
