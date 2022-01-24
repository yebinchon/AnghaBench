#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iwl_trans_pcie {int /*<<< orphan*/  status; } ;
struct iwl_trans {int dummy; } ;
struct iwl_host_cmd {int flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int EIO ; 
 int ERFKILL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  STATUS_RFKILL ; 
 int FUNC2 (struct iwl_trans*,struct iwl_host_cmd*) ; 
 int FUNC3 (struct iwl_trans*,struct iwl_host_cmd*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct iwl_trans *trans, struct iwl_host_cmd *cmd)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	if (FUNC4(STATUS_FW_ERROR, &trans_pcie->status))
		return -EIO;

	if (FUNC4(STATUS_RFKILL, &trans_pcie->status)) {
		FUNC0(trans, "Dropping CMD 0x%x: RF KILL\n",
				  cmd->id);
		return -ERFKILL;
	}

	if (cmd->flags & CMD_ASYNC)
		return FUNC2(trans, cmd);

	/* We still can fail on RFKILL that can be asserted while we wait */
	return FUNC3(trans, cmd);
}