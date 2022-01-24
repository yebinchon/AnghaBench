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
struct TYPE_4__ {int /*<<< orphan*/  cmdq_ci; } ;
struct bfi_msgq_i2h_db {TYPE_2__ idx; } ;
struct bfi_mbmsg {int dummy; } ;
struct bfa_msgq_cmdq {int /*<<< orphan*/  pending_q; scalar_t__ consumer_index; } ;
struct bfa_msgq_cmd_entry {int /*<<< orphan*/  qe; TYPE_1__* msg_hdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_entries; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bfa_msgq_cmdq*) ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  CMDQ_E_POST ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_msgq_cmdq*,struct bfa_msgq_cmd_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_msgq_cmdq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_msgq_cmd_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct bfa_msgq_cmdq *cmdq, struct bfi_mbmsg *mb)
{
	struct bfi_msgq_i2h_db *dbell = (struct bfi_msgq_i2h_db *)mb;
	struct bfa_msgq_cmd_entry *cmd;
	int posted = 0;

	cmdq->consumer_index = FUNC7(dbell->idx.cmdq_ci);

	/* Walk through pending list to see if the command can be posted */
	while (!FUNC6(&cmdq->pending_q)) {
		cmd =
		(struct bfa_msgq_cmd_entry *)FUNC3(&cmdq->pending_q);
		if (FUNC7(cmd->msg_hdr->num_entries) <=
			FUNC0(cmdq)) {
			FUNC5(&cmd->qe);
			FUNC1(cmdq, cmd);
			posted = 1;
			FUNC4(cmd, BFA_STATUS_OK);
		} else {
			break;
		}
	}

	if (posted)
		FUNC2(cmdq, CMDQ_E_POST);
}