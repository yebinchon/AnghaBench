
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl12xx_cmd_stop_channel_switch {int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_STOP_CHANNEL_SWICTH ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl12xx_cmd_stop_channel_switch*) ;
 struct wl12xx_cmd_stop_channel_switch* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_stop_channel_switch*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl12xx_cmd_stop_channel_switch(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl12xx_cmd_stop_channel_switch *cmd;
 int ret;

 wl1271_debug(DEBUG_ACX, "cmd stop channel switch");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 cmd->role_id = wlvif->role_id;

 ret = wl1271_cmd_send(wl, CMD_STOP_CHANNEL_SWICTH, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to stop channel switch command");
  goto out_free;
 }

out_free:
 kfree(cmd);

out:
 return ret;
}
