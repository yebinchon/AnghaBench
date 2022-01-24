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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_set_beacon {TYPE_1__ header; int /*<<< orphan*/  beacon; void* beacon_len; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_SET_BEACON ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl8k_cmd_set_beacon*) ; 
 struct mwl8k_cmd_set_beacon* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct ieee80211_hw*,struct ieee80211_vif*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif, u8 *beacon, int len)
{
	struct mwl8k_cmd_set_beacon *cmd;
	int rc;

	cmd = FUNC2(sizeof(*cmd) + len, GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_SET_BEACON);
	cmd->header.length = FUNC0(sizeof(*cmd) + len);
	cmd->beacon_len = FUNC0(len);
	FUNC3(cmd->beacon, beacon, len);

	rc = FUNC4(hw, vif, &cmd->header);
	FUNC1(cmd);

	return rc;
}