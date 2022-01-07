
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct dentry {int dummy; } ;
struct ath_node {int node_stat; } ;


 int debugfs_remove (int ) ;

void ath9k_sta_remove_debugfs(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_sta *sta,
         struct dentry *dir)
{
 struct ath_node *an = (struct ath_node *)sta->drv_priv;
 debugfs_remove(an->node_stat);
}
