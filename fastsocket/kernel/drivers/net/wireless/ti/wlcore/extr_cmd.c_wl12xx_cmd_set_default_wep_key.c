
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wl1271_cmd_set_keys {int key_type; int key_action; int lid_key_type; void* key_id; void* hlid; } ;
struct wl1271 {int dummy; } ;


 int CMD_SET_KEYS ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KEY_SET_ID ;
 int KEY_WEP ;
 int WEP_DEFAULT_LID_TYPE ;
 int cpu_to_le16 (int ) ;
 int kfree (struct wl1271_cmd_set_keys*) ;
 struct wl1271_cmd_set_keys* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl1271_cmd_set_keys*,int,int ) ;
 int wl1271_debug (int ,char*,void*) ;
 int wl1271_warning (char*,int) ;

int wl12xx_cmd_set_default_wep_key(struct wl1271 *wl, u8 id, u8 hlid)
{
 struct wl1271_cmd_set_keys *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd set_default_wep_key %d", id);

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 cmd->hlid = hlid;
 cmd->key_id = id;
 cmd->lid_key_type = WEP_DEFAULT_LID_TYPE;
 cmd->key_action = cpu_to_le16(KEY_SET_ID);
 cmd->key_type = KEY_WEP;

 ret = wl1271_cmd_send(wl, CMD_SET_KEYS, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_warning("cmd set_default_wep_key failed: %d", ret);
  goto out;
 }

out:
 kfree(cmd);

 return ret;
}
