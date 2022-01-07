
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct wl1271_acx_rssi_snr_avg_weights {int snr_data; int snr_beacon; int rssi_data; int rssi_beacon; int role_id; } ;
struct conf_roam_trigger_settings {int avg_weight_snr_data; int avg_weight_snr_beacon; int avg_weight_rssi_data; int avg_weight_rssi_beacon; } ;
struct TYPE_2__ {struct conf_roam_trigger_settings roam_trigger; } ;
struct wl1271 {TYPE_1__ conf; } ;


 int ACX_RSSI_SNR_WEIGHTS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1271_acx_rssi_snr_avg_weights*) ;
 struct wl1271_acx_rssi_snr_avg_weights* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_rssi_snr_avg_weights*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_rssi_snr_avg_weights(struct wl1271 *wl,
        struct wl12xx_vif *wlvif)
{
 struct wl1271_acx_rssi_snr_avg_weights *acx = ((void*)0);
 struct conf_roam_trigger_settings *c = &wl->conf.roam_trigger;
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx rssi snr avg weights");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->rssi_beacon = c->avg_weight_rssi_beacon;
 acx->rssi_data = c->avg_weight_rssi_data;
 acx->snr_beacon = c->avg_weight_snr_beacon;
 acx->snr_data = c->avg_weight_snr_data;

 ret = wl1271_cmd_configure(wl, ACX_RSSI_SNR_WEIGHTS, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx rssi snr trigger weights failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
