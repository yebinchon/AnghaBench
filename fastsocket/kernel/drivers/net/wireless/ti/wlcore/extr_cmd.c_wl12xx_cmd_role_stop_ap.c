
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int global_hlid; int bcast_hlid; } ;
struct wl12xx_vif {TYPE_1__ ap; int role_id; } ;
struct wl12xx_cmd_role_stop {int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_ROLE_STOP ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl12xx_cmd_role_stop*) ;
 struct wl12xx_cmd_role_stop* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_role_stop*,int,int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*) ;
 int wl12xx_free_link (struct wl1271*,struct wl12xx_vif*,int *) ;

int wl12xx_cmd_role_stop_ap(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl12xx_cmd_role_stop *cmd;
 int ret;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 wl1271_debug(DEBUG_CMD, "cmd role stop ap %d", wlvif->role_id);

 cmd->role_id = wlvif->role_id;

 ret = wl1271_cmd_send(wl, CMD_ROLE_STOP, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to initiate cmd role stop ap");
  goto out_free;
 }

 wl12xx_free_link(wl, wlvif, &wlvif->ap.bcast_hlid);
 wl12xx_free_link(wl, wlvif, &wlvif->ap.global_hlid);

out_free:
 kfree(cmd);

out:
 return ret;
}
