
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int channel; int channel_type; int band; int role_id; } ;
struct wl1271 {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_3__ {int band; int center_freq; } ;


 int DEBUG_MAC80211 ;
 int cfg80211_get_chandef_type (TYPE_2__*) ;
 int ieee80211_frequency_to_channel (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1271_debug (int ,char*,int ,int,int ) ;
 int wl1271_set_band_rate (struct wl1271*,struct wl12xx_vif*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static int wlcore_op_assign_vif_chanctx(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_chanctx_conf *ctx)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int channel = ieee80211_frequency_to_channel(
  ctx->def.chan->center_freq);

 wl1271_debug(DEBUG_MAC80211,
       "mac80211 assign chanctx (role %d) %d (type %d)",
       wlvif->role_id, channel, cfg80211_get_chandef_type(&ctx->def));

 mutex_lock(&wl->mutex);

 wlvif->band = ctx->def.chan->band;
 wlvif->channel = channel;
 wlvif->channel_type = cfg80211_get_chandef_type(&ctx->def);


 wl1271_set_band_rate(wl, wlvif);

 mutex_unlock(&wl->mutex);

 return 0;
}
