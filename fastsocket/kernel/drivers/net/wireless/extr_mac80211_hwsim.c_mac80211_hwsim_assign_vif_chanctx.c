
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_chanctx_conf {int dummy; } ;


 int hwsim_check_chanctx_magic (struct ieee80211_chanctx_conf*) ;
 int hwsim_check_magic (struct ieee80211_vif*) ;

__attribute__((used)) static int mac80211_hwsim_assign_vif_chanctx(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_chanctx_conf *ctx)
{
 hwsim_check_magic(vif);
 hwsim_check_chanctx_magic(ctx);

 return 0;
}
