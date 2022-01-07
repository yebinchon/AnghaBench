
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_use_fixed_rate_ap {int multicast_rate; int management_rate; TYPE_1__ header; int action; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_CMD_USE_FIXED_RATE ;
 int MWL8K_USE_AUTO_RATE ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct mwl8k_cmd_use_fixed_rate_ap*) ;
 struct mwl8k_cmd_use_fixed_rate_ap* kzalloc (int,int ) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_1__*) ;

__attribute__((used)) static int
mwl8k_cmd_use_fixed_rate_ap(struct ieee80211_hw *hw, int mcast, int mgmt)
{
 struct mwl8k_cmd_use_fixed_rate_ap *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_USE_FIXED_RATE);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->action = cpu_to_le32(MWL8K_USE_AUTO_RATE);
 cmd->multicast_rate = mcast;
 cmd->management_rate = mgmt;

 rc = mwl8k_post_cmd(hw, &cmd->header);
 kfree(cmd);

 return rc;
}
