
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int beacon_skb; int hw; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int ENOMEM ;
 int dev_kfree_skb (int ) ;
 int ieee80211_beacon_get (int ,struct ieee80211_vif*) ;
 int iwlagn_send_beacon_cmd (struct iwl_priv*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwlagn_update_beacon(struct iwl_priv *priv,
    struct ieee80211_vif *vif)
{
 lockdep_assert_held(&priv->mutex);

 dev_kfree_skb(priv->beacon_skb);
 priv->beacon_skb = ieee80211_beacon_get(priv->hw, vif);
 if (!priv->beacon_skb)
  return -ENOMEM;
 return iwlagn_send_beacon_cmd(priv);
}
