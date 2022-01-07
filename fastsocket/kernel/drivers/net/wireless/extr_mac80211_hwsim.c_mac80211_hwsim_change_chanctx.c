
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_hw {int wiphy; } ;
struct TYPE_4__ {int center_freq2; int center_freq1; int width; TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_3__ {int center_freq; } ;


 int hwsim_check_chanctx_magic (struct ieee80211_chanctx_conf*) ;
 int wiphy_debug (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void mac80211_hwsim_change_chanctx(struct ieee80211_hw *hw,
       struct ieee80211_chanctx_conf *ctx,
       u32 changed)
{
 hwsim_check_chanctx_magic(ctx);
 wiphy_debug(hw->wiphy,
      "change channel context control: %d MHz/width: %d/cfreqs:%d/%d MHz\n",
      ctx->def.chan->center_freq, ctx->def.width,
      ctx->def.center_freq1, ctx->def.center_freq2);
}
