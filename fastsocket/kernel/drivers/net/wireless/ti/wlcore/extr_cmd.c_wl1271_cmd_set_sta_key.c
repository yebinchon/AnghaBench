
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ hlid; } ;
struct wl12xx_vif {TYPE_1__ sta; } ;
struct wl1271_cmd_set_keys {scalar_t__ hlid; scalar_t__ key; scalar_t__ key_id; int * ac_seq_num32; void** ac_seq_num16; scalar_t__ key_type; scalar_t__ key_size; void* key_action; int lid_key_type; } ;
struct wl1271 {int dummy; } ;


 int BROADCAST_LID_TYPE ;
 int CMD_SET_KEYS ;
 int DEBUG_CRYPT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ KEY_TKIP ;
 scalar_t__ KEY_WEP ;
 int UNICAST_LID_TYPE ;
 int WEP_DEFAULT_LID_TYPE ;
 scalar_t__ WL12XX_INVALID_LINK_ID ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ is_broadcast_ether_addr (scalar_t__ const*) ;
 int kfree (struct wl1271_cmd_set_keys*) ;
 struct wl1271_cmd_set_keys* kzalloc (int,int ) ;
 int memcpy (scalar_t__,scalar_t__ const*,scalar_t__) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl1271_cmd_set_keys*,int,int ) ;
 int wl1271_dump (int ,char*,struct wl1271_cmd_set_keys*,int) ;
 int wl1271_warning (char*) ;

int wl1271_cmd_set_sta_key(struct wl1271 *wl, struct wl12xx_vif *wlvif,
         u16 action, u8 id, u8 key_type,
         u8 key_size, const u8 *key, const u8 *addr,
         u32 tx_seq_32, u16 tx_seq_16)
{
 struct wl1271_cmd_set_keys *cmd;
 int ret = 0;


 if (wlvif->sta.hlid == WL12XX_INVALID_LINK_ID)
  return 0;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 cmd->hlid = wlvif->sta.hlid;

 if (key_type == KEY_WEP)
  cmd->lid_key_type = WEP_DEFAULT_LID_TYPE;
 else if (is_broadcast_ether_addr(addr))
  cmd->lid_key_type = BROADCAST_LID_TYPE;
 else
  cmd->lid_key_type = UNICAST_LID_TYPE;

 cmd->key_action = cpu_to_le16(action);
 cmd->key_size = key_size;
 cmd->key_type = key_type;

 cmd->ac_seq_num16[0] = cpu_to_le16(tx_seq_16);
 cmd->ac_seq_num32[0] = cpu_to_le32(tx_seq_32);

 cmd->key_id = id;

 if (key_type == KEY_TKIP) {






  memcpy(cmd->key, key, 16);
  memcpy(cmd->key + 16, key + 24, 8);
  memcpy(cmd->key + 24, key + 16, 8);

 } else {
  memcpy(cmd->key, key, key_size);
 }

 wl1271_dump(DEBUG_CRYPT, "TARGET KEY: ", cmd, sizeof(*cmd));

 ret = wl1271_cmd_send(wl, CMD_SET_KEYS, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_warning("could not set keys");
 goto out;
 }

out:
 kfree(cmd);

 return ret;
}
