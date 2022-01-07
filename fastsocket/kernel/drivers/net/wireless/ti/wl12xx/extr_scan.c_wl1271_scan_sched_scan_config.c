
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct wlcore_scan_channels {int report_after; int filter_type; scalar_t__* active; scalar_t__ ssid_len; int * intervals; int bss_type; int tag; scalar_t__ terminate; scalar_t__ cycles; int n_probe_reqs; int snr_threshold; int rssi_threshold; int role_id; } ;
struct wl12xx_vif {int role_id; } ;
struct wl1271_cmd_sched_scan_config {int report_after; int filter_type; scalar_t__* active; scalar_t__ ssid_len; int * intervals; int bss_type; int tag; scalar_t__ terminate; scalar_t__ cycles; int n_probe_reqs; int snr_threshold; int rssi_threshold; int role_id; } ;
struct conf_sched_scan_settings {int num_probe_reqs; int snr_threshold; int rssi_threshold; } ;
struct TYPE_3__ {struct conf_sched_scan_settings sched_scan; } ;
struct wl1271 {TYPE_1__ conf; } ;
struct ieee80211_sched_scan_ies {int * len; int * ie; } ;
struct cfg80211_sched_scan_request {TYPE_2__* ssids; int n_ssids; int n_channels; int channels; int interval; } ;
struct TYPE_4__ {int ssid_len; int ssid; } ;


 int CMD_CONNECTION_SCAN_CFG ;
 int DEBUG_CMD ;
 int DEBUG_SCAN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int SCAN_BSS_TYPE_ANY ;
 int SCAN_MAX_CYCLE_INTERVALS ;
 int SCAN_TYPE_PERIODIC ;
 int WL1271_SCAN_DEFAULT_TAG ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wlcore_scan_channels*) ;
 struct wlcore_scan_channels* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wlcore_scan_channels*,int,int ) ;
 int wl1271_debug (int ,char*,...) ;
 int wl1271_dump (int ,char*,struct wlcore_scan_channels*,int) ;
 int wl1271_error (char*) ;
 int wl12xx_adjust_channels (struct wlcore_scan_channels*,struct wlcore_scan_channels*) ;
 int wl12xx_cmd_build_probe_req (struct wl1271*,struct wl12xx_vif*,int ,size_t,int ,int ,int ,int ,int) ;
 int wlcore_scan_sched_scan_ssid_list (struct wl1271*,struct wl12xx_vif*,struct cfg80211_sched_scan_request*) ;
 int wlcore_set_scan_chan_params (struct wl1271*,struct wlcore_scan_channels*,int ,int ,int ,int ) ;

int wl1271_scan_sched_scan_config(struct wl1271 *wl,
      struct wl12xx_vif *wlvif,
      struct cfg80211_sched_scan_request *req,
      struct ieee80211_sched_scan_ies *ies)
{
 struct wl1271_cmd_sched_scan_config *cfg = ((void*)0);
 struct wlcore_scan_channels *cfg_channels = ((void*)0);
 struct conf_sched_scan_settings *c = &wl->conf.sched_scan;
 int i, ret;
 bool force_passive = !req->n_ssids;

 wl1271_debug(DEBUG_CMD, "cmd sched_scan scan config");

 cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
 if (!cfg)
  return -ENOMEM;

 cfg->role_id = wlvif->role_id;
 cfg->rssi_threshold = c->rssi_threshold;
 cfg->snr_threshold = c->snr_threshold;
 cfg->n_probe_reqs = c->num_probe_reqs;

 cfg->cycles = 0;

 cfg->report_after = 1;

 cfg->terminate = 0;
 cfg->tag = WL1271_SCAN_DEFAULT_TAG;

 cfg->bss_type = SCAN_BSS_TYPE_ANY;

 for (i = 0; i < SCAN_MAX_CYCLE_INTERVALS; i++)
  cfg->intervals[i] = cpu_to_le32(req->interval);

 cfg->ssid_len = 0;
 ret = wlcore_scan_sched_scan_ssid_list(wl, wlvif, req);
 if (ret < 0)
  goto out;

 cfg->filter_type = ret;

 wl1271_debug(DEBUG_SCAN, "filter_type = %d", cfg->filter_type);

 cfg_channels = kzalloc(sizeof(*cfg_channels), GFP_KERNEL);
 if (!cfg_channels) {
  ret = -ENOMEM;
  goto out;
 }

 if (!wlcore_set_scan_chan_params(wl, cfg_channels, req->channels,
      req->n_channels, req->n_ssids,
      SCAN_TYPE_PERIODIC)) {
  wl1271_error("scan channel list is empty");
  ret = -EINVAL;
  goto out;
 }
 wl12xx_adjust_channels(cfg, cfg_channels);

 if (!force_passive && cfg->active[0]) {
  u8 band = IEEE80211_BAND_2GHZ;
  ret = wl12xx_cmd_build_probe_req(wl, wlvif,
       wlvif->role_id, band,
       req->ssids[0].ssid,
       req->ssids[0].ssid_len,
       ies->ie[band],
       ies->len[band], 1);
  if (ret < 0) {
   wl1271_error("2.4GHz PROBE request template failed");
   goto out;
  }
 }

 if (!force_passive && cfg->active[1]) {
  u8 band = IEEE80211_BAND_5GHZ;
  ret = wl12xx_cmd_build_probe_req(wl, wlvif,
       wlvif->role_id, band,
       req->ssids[0].ssid,
       req->ssids[0].ssid_len,
       ies->ie[band],
       ies->len[band], 1);
  if (ret < 0) {
   wl1271_error("5GHz PROBE request template failed");
   goto out;
  }
 }

 wl1271_dump(DEBUG_SCAN, "SCAN_CFG: ", cfg, sizeof(*cfg));

 ret = wl1271_cmd_send(wl, CMD_CONNECTION_SCAN_CFG, cfg,
         sizeof(*cfg), 0);
 if (ret < 0) {
  wl1271_error("SCAN configuration failed");
  goto out;
 }
out:
 kfree(cfg_channels);
 kfree(cfg);
 return ret;
}
