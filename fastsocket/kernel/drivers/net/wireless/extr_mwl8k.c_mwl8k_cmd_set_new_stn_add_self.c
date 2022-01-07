
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_set_new_stn {TYPE_1__ header; int mac_addr; } ;
struct ieee80211_vif {int addr; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MWL8K_CMD_SET_NEW_STN ;
 void* cpu_to_le16 (int) ;
 int kfree (struct mwl8k_cmd_set_new_stn*) ;
 struct mwl8k_cmd_set_new_stn* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int mwl8k_post_pervif_cmd (struct ieee80211_hw*,struct ieee80211_vif*,TYPE_1__*) ;

__attribute__((used)) static int mwl8k_cmd_set_new_stn_add_self(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct mwl8k_cmd_set_new_stn *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_SET_NEW_STN);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 memcpy(cmd->mac_addr, vif->addr, ETH_ALEN);

 rc = mwl8k_post_pervif_cmd(hw, vif, &cmd->header);
 kfree(cmd);

 return rc;
}
