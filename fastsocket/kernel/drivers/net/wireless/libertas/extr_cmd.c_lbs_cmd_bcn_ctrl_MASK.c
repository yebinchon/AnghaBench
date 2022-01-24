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
typedef  scalar_t__ u16 ;
struct lbs_private {scalar_t__ beacon_period; scalar_t__ beacon_enable; } ;
struct cmd_ds_802_11_beacon_control {void* beacon_period; void* beacon_enable; void* action; } ;
struct TYPE_2__ {struct cmd_ds_802_11_beacon_control bcn_ctrl; } ;
struct cmd_ds_command {void* command; void* size; TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ CMD_802_11_BEACON_CTRL ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 scalar_t__ S_DS_GEN ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lbs_private * priv,
				struct cmd_ds_command *cmd,
				u16 cmd_action)
{
	struct cmd_ds_802_11_beacon_control
		*bcn_ctrl = &cmd->params.bcn_ctrl;

	FUNC1(LBS_DEB_CMD);
	cmd->size =
	    FUNC0(sizeof(struct cmd_ds_802_11_beacon_control)
			     + S_DS_GEN);
	cmd->command = FUNC0(CMD_802_11_BEACON_CTRL);

	bcn_ctrl->action = FUNC0(cmd_action);
	bcn_ctrl->beacon_enable = FUNC0(priv->beacon_enable);
	bcn_ctrl->beacon_period = FUNC0(priv->beacon_period);

	FUNC2(LBS_DEB_CMD);
	return 0;
}