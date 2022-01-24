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
struct mwl8k_cmd_rf_antenna {TYPE_1__ header; void* mode; void* antenna; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_RF_ANTENNA ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl8k_cmd_rf_antenna*) ; 
 struct mwl8k_cmd_rf_antenna* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_hw*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211_hw *hw, int antenna, int mask)
{
	struct mwl8k_cmd_rf_antenna *cmd;
	int rc;

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_RF_ANTENNA);
	cmd->header.length = FUNC0(sizeof(*cmd));
	cmd->antenna = FUNC0(antenna);
	cmd->mode = FUNC0(mask);

	rc = FUNC3(hw, &cmd->header);
	FUNC1(cmd);

	return rc;
}