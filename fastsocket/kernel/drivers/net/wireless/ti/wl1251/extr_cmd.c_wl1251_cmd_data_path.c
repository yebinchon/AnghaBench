
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl1251 {int dummy; } ;
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
 int wl1251_cmd_send (struct wl1251*,int ,struct cmd_enabledisable_path*,int) ;
 int wl1251_debug (int ,char*,...) ;
 int wl1251_error (char*,char*,int ) ;

int wl1251_cmd_data_path(struct wl1251 *wl, u8 channel, bool enable)
{
 struct cmd_enabledisable_path *cmd;
 int ret;
 u16 cmd_rx, cmd_tx;

 wl1251_debug(DEBUG_CMD, "cmd data path");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 cmd->channel = channel;

 if (enable) {
  cmd_rx = CMD_ENABLE_RX;
  cmd_tx = CMD_ENABLE_TX;
 } else {
  cmd_rx = CMD_DISABLE_RX;
  cmd_tx = CMD_DISABLE_TX;
 }

 ret = wl1251_cmd_send(wl, cmd_rx, cmd, sizeof(*cmd));
 if (ret < 0) {
  wl1251_error("rx %s cmd for channel %d failed",
        enable ? "start" : "stop", channel);
  goto out;
 }

 wl1251_debug(DEBUG_BOOT, "rx %s cmd channel %d",
       enable ? "start" : "stop", channel);

 ret = wl1251_cmd_send(wl, cmd_tx, cmd, sizeof(*cmd));
 if (ret < 0) {
  wl1251_error("tx %s cmd for channel %d failed",
        enable ? "start" : "stop", channel);
  goto out;
 }

 wl1251_debug(DEBUG_BOOT, "tx %s cmd channel %d",
       enable ? "start" : "stop", channel);

out:
 kfree(cmd);
 return ret;
}
