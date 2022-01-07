
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wl12xx_vif {int last_rssi_event; int role_id; } ;
struct wl1271_acx_rssi_snr_trigger {int hysteresis; void* threshold; int dir; int index; int enable; int type; int metric; void* pacing; int role_id; } ;
struct TYPE_3__ {int trigger_pacing; } ;
struct TYPE_4__ {TYPE_1__ roam_trigger; } ;
struct wl1271 {TYPE_2__ conf; } ;
typedef int s16 ;


 int ACX_RSSI_SNR_TRIGGER ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WL1271_ACX_TRIG_DIR_BIDIR ;
 int WL1271_ACX_TRIG_DISABLE ;
 int WL1271_ACX_TRIG_ENABLE ;
 int WL1271_ACX_TRIG_IDX_RSSI ;
 int WL1271_ACX_TRIG_METRIC_RSSI_BEACON ;
 int WL1271_ACX_TRIG_TYPE_EDGE ;
 void* cpu_to_le16 (int ) ;
 int kfree (struct wl1271_acx_rssi_snr_trigger*) ;
 struct wl1271_acx_rssi_snr_trigger* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_rssi_snr_trigger*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_rssi_snr_trigger(struct wl1271 *wl, struct wl12xx_vif *wlvif,
    bool enable, s16 thold, u8 hyst)
{
 struct wl1271_acx_rssi_snr_trigger *acx = ((void*)0);
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx rssi snr trigger");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 wlvif->last_rssi_event = -1;

 acx->role_id = wlvif->role_id;
 acx->pacing = cpu_to_le16(wl->conf.roam_trigger.trigger_pacing);
 acx->metric = WL1271_ACX_TRIG_METRIC_RSSI_BEACON;
 acx->type = WL1271_ACX_TRIG_TYPE_EDGE;
 if (enable)
  acx->enable = WL1271_ACX_TRIG_ENABLE;
 else
  acx->enable = WL1271_ACX_TRIG_DISABLE;

 acx->index = WL1271_ACX_TRIG_IDX_RSSI;
 acx->dir = WL1271_ACX_TRIG_DIR_BIDIR;
 acx->threshold = cpu_to_le16(thold);
 acx->hysteresis = hyst;

 ret = wl1271_cmd_configure(wl, ACX_RSSI_SNR_TRIGGER, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx rssi snr trigger setting failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
