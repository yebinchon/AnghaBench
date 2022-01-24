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
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rf_channel {int /*<<< orphan*/  channel; void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_RF_CHANNEL ; 
 int CMD_OPT_802_11_RF_CHANNEL_GET ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_rf_channel*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_ds_802_11_rf_channel*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct lbs_private *priv)
{
	struct cmd_ds_802_11_rf_channel cmd;
	int ret = 0;

	FUNC3(LBS_DEB_CMD);

	FUNC6(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(CMD_OPT_802_11_RF_CHANNEL_GET);

	ret = FUNC1(priv, CMD_802_11_RF_CHANNEL, &cmd);
	if (ret)
		goto out;

	ret = FUNC5(cmd.channel);
	FUNC2("current radio channel is %d\n", ret);

out:
	FUNC4(LBS_DEB_CMD, "ret %d", ret);
	return ret;
}