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
struct iwl_phy_context_cmd {int dummy; } ;
struct iwl_mvm_phy_ctxt {int /*<<< orphan*/  id; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_CONTEXT_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm_phy_ctxt*,struct iwl_phy_context_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_phy_context_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iwl_mvm *mvm, struct iwl_mvm_phy_ctxt *ctxt)
{
	struct iwl_phy_context_cmd cmd;
	int ret;

	FUNC3(&mvm->mutex);

	FUNC1(ctxt, &cmd, FW_CTXT_ACTION_REMOVE, 0);
	ret = FUNC2(mvm, PHY_CONTEXT_CMD, CMD_SYNC,
				   sizeof(struct iwl_phy_context_cmd),
				   &cmd);
	if (ret)
		FUNC0(mvm, "Failed to send PHY remove: ctxt id=%d\n",
			ctxt->id);
}