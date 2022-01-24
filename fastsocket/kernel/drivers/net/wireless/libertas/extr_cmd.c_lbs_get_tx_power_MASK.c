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
struct cmd_ds_802_11_rf_tx_power {int /*<<< orphan*/  maxlevel; int /*<<< orphan*/  minlevel; int /*<<< orphan*/  curlevel; void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_RF_TX_POWER ; 
 int CMD_ACT_GET ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_rf_tx_power*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_ds_802_11_rf_tx_power*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct lbs_private *priv, s16 *curlevel, s16 *minlevel,
		     s16 *maxlevel)
{
	struct cmd_ds_802_11_rf_tx_power cmd;
	int ret;

	FUNC2(LBS_DEB_CMD);

	FUNC5(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(CMD_ACT_GET);

	ret = FUNC1(priv, CMD_802_11_RF_TX_POWER, &cmd);
	if (ret == 0) {
		*curlevel = FUNC4(cmd.curlevel);
		if (minlevel)
			*minlevel = cmd.minlevel;
		if (maxlevel)
			*maxlevel = cmd.maxlevel;
	}

	FUNC3(LBS_DEB_CMD);
	return ret;
}