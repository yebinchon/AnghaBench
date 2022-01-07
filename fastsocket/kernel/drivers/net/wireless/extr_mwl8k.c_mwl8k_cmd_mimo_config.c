
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_mimo_config {TYPE_1__ header; void* tx_antenna_map; void* rx_antenna_map; int action; } ;
struct ieee80211_hw {int dummy; } ;
typedef void* __u8 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_CMD_MIMO_CONFIG ;
 scalar_t__ MWL8K_CMD_SET ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct mwl8k_cmd_mimo_config*) ;
 struct mwl8k_cmd_mimo_config* kzalloc (int,int ) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_1__*) ;

__attribute__((used)) static int mwl8k_cmd_mimo_config(struct ieee80211_hw *hw, __u8 rx, __u8 tx)
{
 struct mwl8k_cmd_mimo_config *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_MIMO_CONFIG);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->action = cpu_to_le32((u32)MWL8K_CMD_SET);
 cmd->rx_antenna_map = rx;
 cmd->tx_antenna_map = tx;

 rc = mwl8k_post_cmd(hw, &cmd->header);
 kfree(cmd);

 return rc;
}
