#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_queue {int /*<<< orphan*/  write_ptr; int /*<<< orphan*/  read_ptr; } ;
struct iwl_txq {TYPE_2__* entries; struct iwl_queue q; } ;
struct iwl_trans_pcie {size_t cmd_queue; struct iwl_txq* txq; int /*<<< orphan*/  status; int /*<<< orphan*/  wait_command_queue; } ;
struct iwl_trans {int dummy; } ;
struct iwl_host_cmd {int flags; int /*<<< orphan*/ * resp_pkt; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ meta; } ;

/* Variables and functions */
 int CMD_WANT_SKB ; 
 int EIO ; 
 int ERFKILL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HOST_COMPLETE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int /*<<< orphan*/ ,...) ; 
 struct iwl_trans_pcie* FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  STATUS_HCMD_ACTIVE ; 
 int /*<<< orphan*/  STATUS_RFKILL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_host_cmd*) ; 
 int FUNC8 (struct iwl_trans*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct iwl_trans *trans,
				   struct iwl_host_cmd *cmd)
{
	struct iwl_trans_pcie *trans_pcie = FUNC3(trans);
	int cmd_idx;
	int ret;

	FUNC0(trans, "Attempting to send sync command %s\n",
		       FUNC6(trans_pcie, cmd->id));

	if (FUNC4(FUNC10(STATUS_HCMD_ACTIVE,
				     &trans_pcie->status))) {
		FUNC2(trans, "Command %s: a command is already active!\n",
			FUNC6(trans_pcie, cmd->id));
		return -EIO;
	}

	FUNC0(trans, "Setting HCMD_ACTIVE for command %s\n",
		       FUNC6(trans_pcie, cmd->id));

	cmd_idx = FUNC8(trans, cmd);
	if (cmd_idx < 0) {
		ret = cmd_idx;
		FUNC5(STATUS_HCMD_ACTIVE, &trans_pcie->status);
		FUNC2(trans,
			"Error sending %s: enqueue_hcmd failed: %d\n",
			FUNC6(trans_pcie, cmd->id), ret);
		return ret;
	}

	ret = FUNC12(trans_pcie->wait_command_queue,
				 !FUNC11(STATUS_HCMD_ACTIVE,
					   &trans_pcie->status),
				 HOST_COMPLETE_TIMEOUT);
	if (!ret) {
		if (FUNC11(STATUS_HCMD_ACTIVE, &trans_pcie->status)) {
			struct iwl_txq *txq =
				&trans_pcie->txq[trans_pcie->cmd_queue];
			struct iwl_queue *q = &txq->q;

			FUNC2(trans,
				"Error sending %s: time out after %dms.\n",
				FUNC6(trans_pcie, cmd->id),
				FUNC9(HOST_COMPLETE_TIMEOUT));

			FUNC2(trans,
				"Current CMD queue read_ptr %d write_ptr %d\n",
				q->read_ptr, q->write_ptr);

			FUNC5(STATUS_HCMD_ACTIVE, &trans_pcie->status);
			FUNC0(trans,
				       "Clearing HCMD_ACTIVE for command %s\n",
				       FUNC6(trans_pcie, cmd->id));
			ret = -ETIMEDOUT;
			goto cancel;
		}
	}

	if (FUNC11(STATUS_FW_ERROR, &trans_pcie->status)) {
		FUNC2(trans, "FW error in SYNC CMD %s\n",
			FUNC6(trans_pcie, cmd->id));
		ret = -EIO;
		goto cancel;
	}

	if (FUNC11(STATUS_RFKILL, &trans_pcie->status)) {
		FUNC1(trans, "RFKILL in SYNC CMD... no rsp\n");
		ret = -ERFKILL;
		goto cancel;
	}

	if ((cmd->flags & CMD_WANT_SKB) && !cmd->resp_pkt) {
		FUNC2(trans, "Error: Response NULL in '%s'\n",
			FUNC6(trans_pcie, cmd->id));
		ret = -EIO;
		goto cancel;
	}

	return 0;

cancel:
	if (cmd->flags & CMD_WANT_SKB) {
		/*
		 * Cancel the CMD_WANT_SKB flag for the cmd in the
		 * TX cmd queue. Otherwise in case the cmd comes
		 * in later, it will possibly set an invalid
		 * address (cmd->meta.source).
		 */
		trans_pcie->txq[trans_pcie->cmd_queue].
			entries[cmd_idx].meta.flags &= ~CMD_WANT_SKB;
	}

	if (cmd->resp_pkt) {
		FUNC7(cmd);
		cmd->resp_pkt = NULL;
	}

	return ret;
}