
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mwl8k_priv {int caps; int band_50; int band_24; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int MWL8K_CAP_2GHZ4 ;
 int MWL8K_CAP_5GHZ ;
 int MWL8K_CAP_BAND_MASK ;
 int MWL8K_CAP_MIMO ;
 int mwl8k_set_ht_caps (struct ieee80211_hw*,int *,int) ;
 int mwl8k_setup_2ghz_band (struct ieee80211_hw*) ;
 int mwl8k_setup_5ghz_band (struct ieee80211_hw*) ;

__attribute__((used)) static void
mwl8k_set_caps(struct ieee80211_hw *hw, u32 caps)
{
 struct mwl8k_priv *priv = hw->priv;

 if (priv->caps)
  return;

 if ((caps & MWL8K_CAP_2GHZ4) || !(caps & MWL8K_CAP_BAND_MASK)) {
  mwl8k_setup_2ghz_band(hw);
  if (caps & MWL8K_CAP_MIMO)
   mwl8k_set_ht_caps(hw, &priv->band_24, caps);
 }

 if (caps & MWL8K_CAP_5GHZ) {
  mwl8k_setup_5ghz_band(hw);
  if (caps & MWL8K_CAP_MIMO)
   mwl8k_set_ht_caps(hw, &priv->band_50, caps);
 }

 priv->caps = caps;
}
