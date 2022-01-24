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
typedef  int u16 ;
struct cmd_ds_802_11_ps_mode {void* multipledtim; int /*<<< orphan*/  nullpktinterval; int /*<<< orphan*/  locallisteninterval; void* action; } ;
struct TYPE_2__ {struct cmd_ds_802_11_ps_mode psmode; } ;
struct cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;

/* Variables and functions */
 int CMD_802_11_PS_MODE ; 
#define  CMD_SUBCMD_ENTER_PS 130 
#define  CMD_SUBCMD_EXIT_PS 129 
#define  CMD_SUBCMD_SLEEP_CONFIRMED 128 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 int MRVDRV_DEFAULT_MULTIPLE_DTIM ; 
 int S_DS_GEN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cmd_ds_command *cmd,
				   u16 cmd_action)
{
	struct cmd_ds_802_11_ps_mode *psm = &cmd->params.psmode;

	FUNC2(LBS_DEB_CMD);

	cmd->command = FUNC0(CMD_802_11_PS_MODE);
	cmd->size = FUNC0(sizeof(struct cmd_ds_802_11_ps_mode) +
				S_DS_GEN);
	psm->action = FUNC0(cmd_action);
	psm->multipledtim = 0;
	switch (cmd_action) {
	case CMD_SUBCMD_ENTER_PS:
		FUNC1("PS command:" "SubCode- Enter PS\n");

		psm->locallisteninterval = 0;
		psm->nullpktinterval = 0;
		psm->multipledtim =
		    FUNC0(MRVDRV_DEFAULT_MULTIPLE_DTIM);
		break;

	case CMD_SUBCMD_EXIT_PS:
		FUNC1("PS command:" "SubCode- Exit PS\n");
		break;

	case CMD_SUBCMD_SLEEP_CONFIRMED:
		FUNC1("PS command: SubCode- sleep confirm\n");
		break;

	default:
		break;
	}

	FUNC3(LBS_DEB_CMD);
	return 0;
}