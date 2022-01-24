#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_mimo_config {TYPE_1__ header; void* tx_antenna_map; void* rx_antenna_map; int /*<<< orphan*/  action; } ;
struct ieee80211_hw {int dummy; } ;
typedef  void* __u8 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_MIMO_CONFIG ; 
 scalar_t__ MWL8K_CMD_SET ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl8k_cmd_mimo_config*) ; 
 struct mwl8k_cmd_mimo_config* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_hw*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw, __u8 rx, __u8 tx)
{
	struct mwl8k_cmd_mimo_config *cmd;
	int rc;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_MIMO_CONFIG);
	cmd->header.length = FUNC0(sizeof(*cmd));
	cmd->action = FUNC1((u32)MWL8K_CMD_SET);
	cmd->rx_antenna_map = rx;
	cmd->tx_antenna_map = tx;

	rc = FUNC4(hw, &cmd->header);
	FUNC2(cmd);

	return rc;
}