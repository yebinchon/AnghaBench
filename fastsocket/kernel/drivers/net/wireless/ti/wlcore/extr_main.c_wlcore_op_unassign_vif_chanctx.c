
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_3__ {int center_freq; } ;


 int DEBUG_MAC80211 ;
 int cfg80211_get_chandef_type (TYPE_2__*) ;
 int ieee80211_frequency_to_channel (int ) ;
 int wl1271_debug (int ,char*,int ,int ,int ) ;
 int wl1271_tx_flush (struct wl1271*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static void wlcore_op_unassign_vif_chanctx(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_chanctx_conf *ctx)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);

 wl1271_debug(DEBUG_MAC80211,
       "mac80211 unassign chanctx (role %d) %d (type %d)",
       wlvif->role_id,
       ieee80211_frequency_to_channel(ctx->def.chan->center_freq),
       cfg80211_get_chandef_type(&ctx->def));

 wl1271_tx_flush(wl);
}
