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
struct nes_cm_core {int /*<<< orphan*/  node_cnt; int /*<<< orphan*/  listen_node_cnt; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC2(struct nes_cm_core *core)
{
	FUNC1(NES_DBG_CM, "---------------------------------------------\n");
	FUNC1(NES_DBG_CM, "CM Core  -- (core = %p )\n", core);
	if (!core)
		return;
	FUNC1(NES_DBG_CM, "---------------------------------------------\n");

	FUNC1(NES_DBG_CM, "State         : %u \n", core->state);

	FUNC1(NES_DBG_CM, "Listen Nodes  : %u \n", FUNC0(&core->listen_node_cnt));
	FUNC1(NES_DBG_CM, "Active Nodes  : %u \n", FUNC0(&core->node_cnt));

	FUNC1(NES_DBG_CM, "core          : %p \n", core);

	FUNC1(NES_DBG_CM, "-------------- end core ---------------\n");
}