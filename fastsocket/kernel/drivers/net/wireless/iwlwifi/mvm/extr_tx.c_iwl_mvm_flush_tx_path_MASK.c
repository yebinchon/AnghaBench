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
struct iwl_tx_path_flush_cmd {int /*<<< orphan*/  flush_ctl; int /*<<< orphan*/  queues_ctl; } ;
struct iwl_mvm {int dummy; } ;
typedef  int /*<<< orphan*/  flush_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  DUMP_TX_FIFO_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  TXPATH_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_tx_path_flush_cmd*) ; 

int FUNC4(struct iwl_mvm *mvm, u32 tfd_msk, bool sync)
{
	int ret;
	struct iwl_tx_path_flush_cmd flush_cmd = {
		.queues_ctl = FUNC2(tfd_msk),
		.flush_ctl = FUNC1(DUMP_TX_FIFO_FLUSH),
	};

	u32 flags = sync ? CMD_SYNC : CMD_ASYNC;

	ret = FUNC3(mvm, TXPATH_FLUSH, flags,
				   sizeof(flush_cmd), &flush_cmd);
	if (ret)
		FUNC0(mvm, "Failed to send flush command (%d)\n", ret);
	return ret;
}