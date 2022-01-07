
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {scalar_t__ mac80211_registered; int hw; } ;


 int ieee80211_unregister_hw (int ) ;
 int iwl_leds_exit (struct iwl_priv*) ;

void iwlagn_mac_unregister(struct iwl_priv *priv)
{
 if (!priv->mac80211_registered)
  return;
 iwl_leds_exit(priv);
 ieee80211_unregister_hw(priv->hw);
 priv->mac80211_registered = 0;
}
