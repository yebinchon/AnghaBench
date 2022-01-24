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
struct iwl_trans_pcie {int dummy; } ;
struct iwl_trans {int dummy; } ;
struct iwl_host_cmd {int flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int CMD_WANT_SKB ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ,int) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans_pcie*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_trans*,struct iwl_host_cmd*) ; 

__attribute__((used)) static int FUNC5(struct iwl_trans *trans,
				    struct iwl_host_cmd *cmd)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	int ret;

	/* An asynchronous command can not expect an SKB to be set. */
	if (FUNC2(cmd->flags & CMD_WANT_SKB))
		return -EINVAL;

	ret = FUNC4(trans, cmd);
	if (ret < 0) {
		FUNC0(trans,
			"Error sending %s: enqueue_hcmd failed: %d\n",
			FUNC3(trans_pcie, cmd->id), ret);
		return ret;
	}
	return 0;
}