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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_phy_context_cmd {void* apply_time; void* action; void* id_and_color; } ;
struct iwl_mvm_phy_ctxt {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_phy_context_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct iwl_mvm_phy_ctxt *ctxt,
				     struct iwl_phy_context_cmd *cmd,
				     u32 action, u32 apply_time)
{
	FUNC2(cmd, 0, sizeof(struct iwl_phy_context_cmd));

	cmd->id_and_color = FUNC1(FUNC0(ctxt->id,
							    ctxt->color));
	cmd->action = FUNC1(action);
	cmd->apply_time = FUNC1(apply_time);
}