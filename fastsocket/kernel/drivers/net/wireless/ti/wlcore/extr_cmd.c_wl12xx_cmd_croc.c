
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_cmd_croc {int role_id; } ;
struct wl1271 {int dummy; } ;


 int CMD_CANCEL_REMAIN_ON_CHANNEL ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl12xx_cmd_croc*) ;
 struct wl12xx_cmd_croc* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_croc*,int,int ) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*) ;

__attribute__((used)) static int wl12xx_cmd_croc(struct wl1271 *wl, u8 role_id)
{
 struct wl12xx_cmd_croc *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd croc (%d)", role_id);

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }
 cmd->role_id = role_id;

 ret = wl1271_cmd_send(wl, CMD_CANCEL_REMAIN_ON_CHANNEL, cmd,
         sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send ROC command");
  goto out_free;
 }

out_free:
 kfree(cmd);

out:
 return ret;
}
