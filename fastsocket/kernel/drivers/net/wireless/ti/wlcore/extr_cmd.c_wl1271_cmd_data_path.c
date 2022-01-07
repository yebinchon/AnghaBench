
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1271 {int dummy; } ;
struct cmd_enabledisable_path {int channel; } ;


 int CMD_DISABLE_RX ;
 int CMD_DISABLE_TX ;
 int CMD_ENABLE_RX ;
 int CMD_ENABLE_TX ;
 int DEBUG_BOOT ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct cmd_enabledisable_path*) ;
 struct cmd_enabledisable_path* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct cmd_enabledisable_path*,int,int ) ;
 int wl1271_debug (int ,char*,...) ;
 int wl1271_error (char*,char*,int) ;

int wl1271_cmd_data_path(struct wl1271 *wl, bool enable)
{
 struct cmd_enabledisable_path *cmd;
 int ret;
 u16 cmd_rx, cmd_tx;

 wl1271_debug(DEBUG_CMD, "cmd data path");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }


 cmd->channel = 1;

 if (enable) {
  cmd_rx = CMD_ENABLE_RX;
  cmd_tx = CMD_ENABLE_TX;
 } else {
  cmd_rx = CMD_DISABLE_RX;
  cmd_tx = CMD_DISABLE_TX;
 }

 ret = wl1271_cmd_send(wl, cmd_rx, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("rx %s cmd for channel %d failed",
        enable ? "start" : "stop", cmd->channel);
  goto out;
 }

 wl1271_debug(DEBUG_BOOT, "rx %s cmd channel %d",
       enable ? "start" : "stop", cmd->channel);

 ret = wl1271_cmd_send(wl, cmd_tx, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("tx %s cmd for channel %d failed",
        enable ? "start" : "stop", cmd->channel);
  goto out;
 }

 wl1271_debug(DEBUG_BOOT, "tx %s cmd channel %d",
       enable ? "start" : "stop", cmd->channel);

out:
 kfree(cmd);
 return ret;
}
