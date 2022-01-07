
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_3__ {int center_freq; } ;


 int DEBUG_MAC80211 ;
 int cfg80211_get_chandef_type (TYPE_2__*) ;
 int ieee80211_frequency_to_channel (int ) ;
 int wl1271_debug (int ,char*,int ,int ) ;

__attribute__((used)) static void wlcore_op_remove_chanctx(struct ieee80211_hw *hw,
         struct ieee80211_chanctx_conf *ctx)
{
 wl1271_debug(DEBUG_MAC80211, "mac80211 remove chanctx %d (type %d)",
       ieee80211_frequency_to_channel(ctx->def.chan->center_freq),
       cfg80211_get_chandef_type(&ctx->def));
}
