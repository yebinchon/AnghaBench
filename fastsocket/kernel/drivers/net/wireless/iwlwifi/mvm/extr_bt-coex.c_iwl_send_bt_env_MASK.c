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
typedef  void* u8 ;
struct iwl_mvm {int dummy; } ;
struct iwl_bt_coex_prot_env_cmd {void* type; void* action; } ;
typedef  int /*<<< orphan*/  env_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  BT_COEX_PROT_ENV ; 
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_bt_coex_prot_env_cmd*) ; 

__attribute__((used)) static int FUNC2(struct iwl_mvm *mvm, u8 action, u8 type)
{
	struct iwl_bt_coex_prot_env_cmd env_cmd;
	int ret;

	env_cmd.action = action;
	env_cmd.type = type;
	ret = FUNC1(mvm, BT_COEX_PROT_ENV, CMD_SYNC,
				   sizeof(env_cmd), &env_cmd);
	if (ret)
		FUNC0(mvm, "failed to send BT env command\n");
	return ret;
}