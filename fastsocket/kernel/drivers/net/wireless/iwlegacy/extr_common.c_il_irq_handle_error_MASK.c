#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct il_priv {int /*<<< orphan*/  restart; int /*<<< orphan*/  workqueue; TYPE_5__* cfg; int /*<<< orphan*/  status; int /*<<< orphan*/  wait_command_queue; TYPE_3__* ops; TYPE_2__* hw; } ;
struct TYPE_10__ {TYPE_4__* mod_params; } ;
struct TYPE_9__ {scalar_t__ restart_fw; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* dump_fh ) (struct il_priv*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  (* dump_nic_error_log ) (struct il_priv*) ;} ;
struct TYPE_7__ {TYPE_1__* wiphy; } ;
struct TYPE_6__ {int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int IL_DL_FW_ERRORS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int /*<<< orphan*/  S_FW_ERROR ; 
 int /*<<< orphan*/  S_HCMD_ACTIVE ; 
 int /*<<< orphan*/  S_READY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(struct il_priv *il)
{
	/* Set the FW error flag -- cleared on il_down */
	FUNC6(S_FW_ERROR, &il->status);

	/* Cancel currently queued command. */
	FUNC2(S_HCMD_ACTIVE, &il->status);

	FUNC1("Loaded firmware version: %s\n", il->hw->wiphy->fw_version);

	il->ops->dump_nic_error_log(il);
	if (il->ops->dump_fh)
		il->ops->dump_fh(il, NULL, false);
#ifdef CONFIG_IWLEGACY_DEBUG
	if (il_get_debug_level(il) & IL_DL_FW_ERRORS)
		il_print_rx_config_cmd(il);
#endif

	FUNC10(&il->wait_command_queue);

	/* Keep the restart process from trying to send host
	 * commands by clearing the INIT status bit */
	FUNC2(S_READY, &il->status);

	if (!FUNC9(S_EXIT_PENDING, &il->status)) {
		FUNC0(IL_DL_FW_ERRORS,
		       "Restarting adapter due to uCode error.\n");

		if (il->cfg->mod_params->restart_fw)
			FUNC5(il->workqueue, &il->restart);
	}
}