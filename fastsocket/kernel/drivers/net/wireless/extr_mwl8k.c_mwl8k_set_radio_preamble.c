
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {int radio_short_preamble; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int mwl8k_cmd_radio_control (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static int
mwl8k_set_radio_preamble(struct ieee80211_hw *hw, bool short_preamble)
{
 struct mwl8k_priv *priv = hw->priv;

 priv->radio_short_preamble = short_preamble;

 return mwl8k_cmd_radio_control(hw, 1, 1);
}
