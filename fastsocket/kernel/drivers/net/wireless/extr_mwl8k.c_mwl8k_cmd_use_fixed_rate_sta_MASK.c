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
struct TYPE_2__ {void* length; void* code; } ;
struct mwl8k_cmd_use_fixed_rate_sta {TYPE_1__ header; void* rate_type; void* action; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_USE_FIXED_RATE ; 
 int /*<<< orphan*/  MWL8K_UCAST_RATE ; 
 int /*<<< orphan*/  MWL8K_USE_AUTO_RATE ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl8k_cmd_use_fixed_rate_sta*) ; 
 struct mwl8k_cmd_use_fixed_rate_sta* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_hw*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw)
{
	struct mwl8k_cmd_use_fixed_rate_sta *cmd;
	int rc;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_USE_FIXED_RATE);
	cmd->header.length = FUNC0(sizeof(*cmd));
	cmd->action = FUNC1(MWL8K_USE_AUTO_RATE);
	cmd->rate_type = FUNC1(MWL8K_UCAST_RATE);

	rc = FUNC4(hw, &cmd->header);
	FUNC2(cmd);

	return rc;
}