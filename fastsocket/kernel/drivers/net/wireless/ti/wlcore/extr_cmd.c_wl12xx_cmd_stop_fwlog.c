
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_cmd_stop_fwlog {int dummy; } ;
struct wl1271 {int dummy; } ;


 int CMD_STOP_FWLOGGER ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl12xx_cmd_stop_fwlog*) ;
 struct wl12xx_cmd_stop_fwlog* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_stop_fwlog*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl12xx_cmd_stop_fwlog(struct wl1271 *wl)
{
 struct wl12xx_cmd_stop_fwlog *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd stop firmware logger");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 ret = wl1271_cmd_send(wl, CMD_STOP_FWLOGGER, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send stop firmware logger command");
  goto out_free;
 }

out_free:
 kfree(cmd);

out:
 return ret;
}
