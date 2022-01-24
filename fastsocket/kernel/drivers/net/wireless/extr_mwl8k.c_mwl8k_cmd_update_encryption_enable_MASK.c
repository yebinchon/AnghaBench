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
struct mwl8k_cmd_update_encryption {TYPE_1__ header; int /*<<< orphan*/  encr_type; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  action; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_UPDATE_ENCRYPTION ; 
 int /*<<< orphan*/  MWL8K_ENCR_ENABLE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl8k_cmd_update_encryption*) ; 
 struct mwl8k_cmd_update_encryption* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ieee80211_hw*,struct ieee80211_vif*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
					      struct ieee80211_vif *vif,
					      u8 *addr,
					      u8 encr_type)
{
	struct mwl8k_cmd_update_encryption *cmd;
	int rc;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_UPDATE_ENCRYPTION);
	cmd->header.length = FUNC0(sizeof(*cmd));
	cmd->action = FUNC1(MWL8K_ENCR_ENABLE);
	FUNC4(cmd->mac_addr, addr, ETH_ALEN);
	cmd->encr_type = encr_type;

	rc = FUNC5(hw, vif, &cmd->header);
	FUNC2(cmd);

	return rc;
}