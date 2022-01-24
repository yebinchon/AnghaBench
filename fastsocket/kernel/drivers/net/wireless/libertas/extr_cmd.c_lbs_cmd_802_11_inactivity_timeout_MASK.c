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
struct TYPE_2__ {void* size; void* command; } ;
struct cmd_ds_802_11_inactivity_timeout {void* timeout; void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int CMD_802_11_INACTIVITY_TIMEOUT ; 
 int CMD_ACT_SET ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int,struct cmd_ds_802_11_inactivity_timeout*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (void*) ; 

int FUNC5(struct lbs_private *priv,
				      uint16_t cmd_action, uint16_t *timeout)
{
	struct cmd_ds_802_11_inactivity_timeout cmd;
	int ret;

	FUNC2(LBS_DEB_CMD);

	cmd.hdr.command = FUNC0(CMD_802_11_INACTIVITY_TIMEOUT);
	cmd.hdr.size = FUNC0(sizeof(cmd));

	cmd.action = FUNC0(cmd_action);

	if (cmd_action == CMD_ACT_SET)
		cmd.timeout = FUNC0(*timeout);
	else
		cmd.timeout = 0;

	ret = FUNC1(priv, CMD_802_11_INACTIVITY_TIMEOUT, &cmd);

	if (!ret)
		*timeout = FUNC4(cmd.timeout);

	FUNC3(LBS_DEB_CMD, "ret %d", ret);
	return 0;
}