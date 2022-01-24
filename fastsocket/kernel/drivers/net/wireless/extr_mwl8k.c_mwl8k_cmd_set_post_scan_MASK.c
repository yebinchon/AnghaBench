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
struct mwl8k_cmd_set_post_scan {TYPE_1__ header; int /*<<< orphan*/  bssid; scalar_t__ isibss; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_SET_POST_SCAN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl8k_cmd_set_post_scan*) ; 
 struct mwl8k_cmd_set_post_scan* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_hw*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(struct ieee80211_hw *hw, const __u8 *mac)
{
	struct mwl8k_cmd_set_post_scan *cmd;
	int rc;

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_SET_POST_SCAN);
	cmd->header.length = FUNC0(sizeof(*cmd));
	cmd->isibss = 0;
	FUNC3(cmd->bssid, mac, ETH_ALEN);

	rc = FUNC4(hw, &cmd->header);
	FUNC1(cmd);

	return rc;
}