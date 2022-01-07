
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl12xx_vif {int flags; } ;
struct wl1271 {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int aifs; int cw_max; int cw_min; scalar_t__ uapsd; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int CONF_ACK_POLICY_LEGACY ;
 int CONF_CHANNEL_TYPE_EDCF ;
 int CONF_PS_SCHEME_LEGACY ;
 int CONF_PS_SCHEME_UPSD_TRIGGER ;
 int DEBUG_MAC80211 ;
 int WLVIF_FLAG_INITIALIZED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;
 int wl1271_acx_ac_cfg (struct wl1271*,struct wl12xx_vif*,int ,int ,int ,int ,int) ;
 int wl1271_acx_tid_cfg (struct wl1271*,struct wl12xx_vif*,int ,int ,int ,int ,int ,int ,int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl1271_tx_get_queue (int ) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static int wl1271_op_conf_tx(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif, u16 queue,
        const struct ieee80211_tx_queue_params *params)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 u8 ps_scheme;
 int ret = 0;

 mutex_lock(&wl->mutex);

 wl1271_debug(DEBUG_MAC80211, "mac80211 conf tx %d", queue);

 if (params->uapsd)
  ps_scheme = CONF_PS_SCHEME_UPSD_TRIGGER;
 else
  ps_scheme = CONF_PS_SCHEME_LEGACY;

 if (!test_bit(WLVIF_FLAG_INITIALIZED, &wlvif->flags))
  goto out;

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;





 ret = wl1271_acx_ac_cfg(wl, wlvif, wl1271_tx_get_queue(queue),
    params->cw_min, params->cw_max,
    params->aifs, params->txop << 5);
 if (ret < 0)
  goto out_sleep;

 ret = wl1271_acx_tid_cfg(wl, wlvif, wl1271_tx_get_queue(queue),
     CONF_CHANNEL_TYPE_EDCF,
     wl1271_tx_get_queue(queue),
     ps_scheme, CONF_ACK_POLICY_LEGACY,
     0, 0);

out_sleep:
 wl1271_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);

 return ret;
}
