#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct bfa_mbox_cmd {int /*<<< orphan*/  (* cbfn ) (void*) ;void* cbarg; int /*<<< orphan*/  msg; } ;
struct bfa_ioc_mbox_mod {int /*<<< orphan*/  cmd_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  hfn_mbox_cmd; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; struct bfa_ioc_mbox_mod mbox_mod; } ;
typedef  int /*<<< orphan*/  (* bfa_mbox_cmd_cbfn_t ) (void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bfa_mbox_cmd**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc *ioc)
{
	struct bfa_ioc_mbox_mod *mod = &ioc->mbox_mod;
	struct bfa_mbox_cmd *cmd;
	bfa_mbox_cmd_cbfn_t cbfn;
	void *cbarg;
	u32 stat;

	/**
	 * If no command pending, do nothing
	 */
	if (FUNC2(&mod->cmd_q))
		return;

	/**
	 * If previous command is not yet fetched by firmware, do nothing
	 */
	stat = FUNC3(ioc->ioc_regs.hfn_mbox_cmd);
	if (stat)
		return;

	/**
	 * Enqueue command to firmware.
	 */
	FUNC1(&mod->cmd_q, &cmd);
	FUNC0(ioc, cmd->msg, sizeof(cmd->msg));

	/**
	 * Give a callback to the client, indicating that the command is sent
	 */
	if (cmd->cbfn) {
		cbfn = cmd->cbfn;
		cbarg = cmd->cbarg;
		cmd->cbfn = NULL;
		cbfn(cbarg);
	}
}