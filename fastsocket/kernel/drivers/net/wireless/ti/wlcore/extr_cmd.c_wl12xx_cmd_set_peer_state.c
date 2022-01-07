
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {scalar_t__ bss_type; int wmm_enabled; } ;
struct wl12xx_cmd_set_peer_state {int wmm; int state; int hlid; } ;
struct wl1271 {int dummy; } ;


 scalar_t__ BSS_TYPE_STA_BSS ;
 int CMD_SET_PEER_STATE ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WL1271_CMD_STA_STATE_CONNECTED ;
 int kfree (struct wl12xx_cmd_set_peer_state*) ;
 struct wl12xx_cmd_set_peer_state* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_set_peer_state*,int,int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*) ;

int wl12xx_cmd_set_peer_state(struct wl1271 *wl, struct wl12xx_vif *wlvif,
         u8 hlid)
{
 struct wl12xx_cmd_set_peer_state *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd set peer state (hlid=%d)", hlid);

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 cmd->hlid = hlid;
 cmd->state = WL1271_CMD_STA_STATE_CONNECTED;


 if (wlvif->bss_type == BSS_TYPE_STA_BSS)
  cmd->wmm = wlvif->wmm_enabled;

 ret = wl1271_cmd_send(wl, CMD_SET_PEER_STATE, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send set peer state command");
  goto out_free;
 }

out_free:
 kfree(cmd);

out:
 return ret;
}
