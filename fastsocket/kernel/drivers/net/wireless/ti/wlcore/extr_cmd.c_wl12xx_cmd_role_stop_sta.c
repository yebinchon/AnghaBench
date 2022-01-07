
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hlid; } ;
struct wl12xx_vif {TYPE_1__ sta; int role_id; } ;
struct wl12xx_cmd_role_stop {int reason; int disc_type; int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_ROLE_STOP ;
 int DEBUG_CMD ;
 int DISCONNECT_IMMEDIATE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WL12XX_INVALID_LINK_ID ;
 int WLAN_REASON_UNSPECIFIED ;
 int cpu_to_le16 (int ) ;
 int kfree (struct wl12xx_cmd_role_stop*) ;
 struct wl12xx_cmd_role_stop* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_role_stop*,int,int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*) ;
 int wl12xx_free_link (struct wl1271*,struct wl12xx_vif*,scalar_t__*) ;

int wl12xx_cmd_role_stop_sta(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl12xx_cmd_role_stop *cmd;
 int ret;

 if (WARN_ON(wlvif->sta.hlid == WL12XX_INVALID_LINK_ID))
  return -EINVAL;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 wl1271_debug(DEBUG_CMD, "cmd role stop sta %d", wlvif->role_id);

 cmd->role_id = wlvif->role_id;
 cmd->disc_type = DISCONNECT_IMMEDIATE;
 cmd->reason = cpu_to_le16(WLAN_REASON_UNSPECIFIED);

 ret = wl1271_cmd_send(wl, CMD_ROLE_STOP, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to initiate cmd role stop sta");
  goto out_free;
 }

 wl12xx_free_link(wl, wlvif, &wlvif->sta.hlid);

out_free:
 kfree(cmd);

out:
 return ret;
}
