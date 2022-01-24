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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_trans_pcie {scalar_t__ n_no_reclaim_cmds; int /*<<< orphan*/  bc_table_dword; int /*<<< orphan*/  command_names; int /*<<< orphan*/  wd_timeout; void* rx_page_order; scalar_t__ rx_buf_size_8k; int /*<<< orphan*/  no_reclaim_cmds; int /*<<< orphan*/  cmd_fifo; int /*<<< orphan*/  cmd_queue; } ;
struct iwl_trans_config {scalar_t__ n_no_reclaim_cmds; int /*<<< orphan*/  bc_table_dword; int /*<<< orphan*/  command_names; int /*<<< orphan*/  queue_watchdog_timeout; scalar_t__ rx_buf_size_8k; int /*<<< orphan*/  no_reclaim_cmds; int /*<<< orphan*/  cmd_fifo; int /*<<< orphan*/  cmd_queue; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 scalar_t__ MAX_NO_RECLAIM_CMDS ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct iwl_trans *trans,
				     const struct iwl_trans_config *trans_cfg)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	trans_pcie->cmd_queue = trans_cfg->cmd_queue;
	trans_pcie->cmd_fifo = trans_cfg->cmd_fifo;
	if (FUNC1(trans_cfg->n_no_reclaim_cmds > MAX_NO_RECLAIM_CMDS))
		trans_pcie->n_no_reclaim_cmds = 0;
	else
		trans_pcie->n_no_reclaim_cmds = trans_cfg->n_no_reclaim_cmds;
	if (trans_pcie->n_no_reclaim_cmds)
		FUNC3(trans_pcie->no_reclaim_cmds, trans_cfg->no_reclaim_cmds,
		       trans_pcie->n_no_reclaim_cmds * sizeof(u8));

	trans_pcie->rx_buf_size_8k = trans_cfg->rx_buf_size_8k;
	if (trans_pcie->rx_buf_size_8k)
		trans_pcie->rx_page_order = FUNC2(8 * 1024);
	else
		trans_pcie->rx_page_order = FUNC2(4 * 1024);

	trans_pcie->wd_timeout =
		FUNC4(trans_cfg->queue_watchdog_timeout);

	trans_pcie->command_names = trans_cfg->command_names;
	trans_pcie->bc_table_dword = trans_cfg->bc_table_dword;
}