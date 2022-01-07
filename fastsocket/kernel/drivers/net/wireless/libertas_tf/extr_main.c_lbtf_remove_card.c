
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int surpriseremoved; struct ieee80211_hw* hw; int command_timer; } ;
struct ieee80211_hw {int dummy; } ;


 int LBTF_DEB_MAIN ;
 int del_timer (int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_free_adapter (struct lbtf_private*) ;

int lbtf_remove_card(struct lbtf_private *priv)
{
 struct ieee80211_hw *hw = priv->hw;

 lbtf_deb_enter(LBTF_DEB_MAIN);

 priv->surpriseremoved = 1;
 del_timer(&priv->command_timer);
 lbtf_free_adapter(priv);
 priv->hw = ((void*)0);
 ieee80211_unregister_hw(hw);
 ieee80211_free_hw(hw);

    lbtf_deb_leave(LBTF_DEB_MAIN);
 return 0;
}
