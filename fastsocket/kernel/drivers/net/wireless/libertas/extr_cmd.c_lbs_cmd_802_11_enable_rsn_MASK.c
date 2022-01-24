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
typedef  int uint16_t ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_enable_rsn {void* enable; void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_ENABLE_RSN ; 
 int CMD_ACT_GET ; 
 int CMD_DISABLE_RSN ; 
 int CMD_ENABLE_RSN ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_enable_rsn*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (void*) ; 

int FUNC6(struct lbs_private *priv, uint16_t cmd_action,
			      uint16_t *enable)
{
	struct cmd_ds_802_11_enable_rsn cmd;
	int ret;

	FUNC3(LBS_DEB_CMD);

	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(cmd_action);

	if (cmd_action == CMD_ACT_GET)
		cmd.enable = 0;
	else {
		if (*enable)
			cmd.enable = FUNC0(CMD_ENABLE_RSN);
		else
			cmd.enable = FUNC0(CMD_DISABLE_RSN);
		FUNC2("ENABLE_RSN: %d\n", *enable);
	}

	ret = FUNC1(priv, CMD_802_11_ENABLE_RSN, &cmd);
	if (!ret && cmd_action == CMD_ACT_GET)
		*enable = FUNC5(cmd.enable);

	FUNC4(LBS_DEB_CMD, "ret %d", ret);
	return ret;
}