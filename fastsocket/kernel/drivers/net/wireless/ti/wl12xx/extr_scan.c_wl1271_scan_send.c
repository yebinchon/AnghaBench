
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct wl12xx_vif {scalar_t__ role_id; } ;
struct TYPE_6__ {scalar_t__ role_id; scalar_t__ n_ch; int ssid; int ssid_len; int band; int scan_tag; int tid_trigger; int n_probe_reqs; void* tx_rate; int scan_options; } ;
struct wl1271_cmd_trigger_scan_to {void* timeout; TYPE_1__ params; int addr; int channels; } ;
struct wl1271_cmd_scan {void* timeout; TYPE_1__ params; int addr; int channels; } ;
struct TYPE_8__ {scalar_t__ split_scan_timeout; int num_probe_reqs; } ;
struct TYPE_9__ {TYPE_3__ scan; } ;
struct TYPE_7__ {TYPE_5__* req; int ssid_len; int ssid; } ;
struct wl1271 {TYPE_4__ conf; TYPE_2__ scan; } ;
struct ieee80211_vif {int addr; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_10__ {scalar_t__ n_ssids; int ie_len; int ie; } ;


 int CMD_SCAN ;
 int CMD_TRIGGER_SCAN_TO ;
 int CONF_TX_AC_ANY_TID ;
 int DEBUG_SCAN ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_BAND_2GHZ ;
 scalar_t__ WARN_ON (int) ;
 int WL1271_NOTHING_TO_SCAN ;
 int WL1271_SCAN_BAND_2_4_GHZ ;
 int WL1271_SCAN_BAND_5_GHZ ;
 int WL1271_SCAN_DEFAULT_TAG ;
 int WL1271_SCAN_OPT_PASSIVE ;
 int WL1271_SCAN_OPT_SPLIT_SCAN ;
 scalar_t__ WL12XX_INVALID_ROLE_ID ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (scalar_t__) ;
 int kfree (struct wl1271_cmd_trigger_scan_to*) ;
 struct wl1271_cmd_trigger_scan_to* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl1271_cmd_trigger_scan_to*,int,int ) ;
 int wl1271_dump (int ,char*,struct wl1271_cmd_trigger_scan_to*,int) ;
 int wl1271_error (char*) ;
 scalar_t__ wl1271_get_scan_channels (struct wl1271*,TYPE_5__*,int ,int,int) ;
 int wl12xx_cmd_build_probe_req (struct wl1271*,struct wl12xx_vif*,scalar_t__,int,int ,int ,int ,int ,int) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

__attribute__((used)) static int wl1271_scan_send(struct wl1271 *wl, struct wl12xx_vif *wlvif,
       enum ieee80211_band band,
       bool passive, u32 basic_rate)
{
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);
 struct wl1271_cmd_scan *cmd;
 struct wl1271_cmd_trigger_scan_to *trigger;
 int ret;
 u16 scan_options = 0;


 if (!passive && wl->scan.req->n_ssids == 0)
  return WL1271_NOTHING_TO_SCAN;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 trigger = kzalloc(sizeof(*trigger), GFP_KERNEL);
 if (!cmd || !trigger) {
  ret = -ENOMEM;
  goto out;
 }

 if (wl->conf.scan.split_scan_timeout)
  scan_options |= WL1271_SCAN_OPT_SPLIT_SCAN;

 if (passive)
  scan_options |= WL1271_SCAN_OPT_PASSIVE;

 cmd->params.role_id = wlvif->role_id;

 if (WARN_ON(cmd->params.role_id == WL12XX_INVALID_ROLE_ID)) {
  ret = -EINVAL;
  goto out;
 }

 cmd->params.scan_options = cpu_to_le16(scan_options);

 cmd->params.n_ch = wl1271_get_scan_channels(wl, wl->scan.req,
          cmd->channels,
          band, passive);
 if (cmd->params.n_ch == 0) {
  ret = WL1271_NOTHING_TO_SCAN;
  goto out;
 }

 cmd->params.tx_rate = cpu_to_le32(basic_rate);
 cmd->params.n_probe_reqs = wl->conf.scan.num_probe_reqs;
 cmd->params.tid_trigger = CONF_TX_AC_ANY_TID;
 cmd->params.scan_tag = WL1271_SCAN_DEFAULT_TAG;

 if (band == IEEE80211_BAND_2GHZ)
  cmd->params.band = WL1271_SCAN_BAND_2_4_GHZ;
 else
  cmd->params.band = WL1271_SCAN_BAND_5_GHZ;

 if (wl->scan.ssid_len && wl->scan.ssid) {
  cmd->params.ssid_len = wl->scan.ssid_len;
  memcpy(cmd->params.ssid, wl->scan.ssid, wl->scan.ssid_len);
 }

 memcpy(cmd->addr, vif->addr, ETH_ALEN);

 ret = wl12xx_cmd_build_probe_req(wl, wlvif,
      cmd->params.role_id, band,
      wl->scan.ssid, wl->scan.ssid_len,
      wl->scan.req->ie,
      wl->scan.req->ie_len, 0);
 if (ret < 0) {
  wl1271_error("PROBE request template failed");
  goto out;
 }

 trigger->timeout = cpu_to_le32(wl->conf.scan.split_scan_timeout);
 ret = wl1271_cmd_send(wl, CMD_TRIGGER_SCAN_TO, trigger,
         sizeof(*trigger), 0);
 if (ret < 0) {
  wl1271_error("trigger scan to failed for hw scan");
  goto out;
 }

 wl1271_dump(DEBUG_SCAN, "SCAN: ", cmd, sizeof(*cmd));

 ret = wl1271_cmd_send(wl, CMD_SCAN, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("SCAN failed");
  goto out;
 }

out:
 kfree(cmd);
 kfree(trigger);
 return ret;
}
