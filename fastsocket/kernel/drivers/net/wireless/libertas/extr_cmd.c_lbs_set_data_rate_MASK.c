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
typedef  scalar_t__ u8 ;
struct lbs_private {scalar_t__ cur_rate; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_data_rate {scalar_t__* rates; void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_DATA_RATE ; 
 int CMD_ACT_SET_TX_AUTO ; 
 int CMD_ACT_SET_TX_FIX_RATE ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_data_rate*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct cmd_ds_802_11_data_rate*,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct lbs_private *priv, u8 rate)
{
	struct cmd_ds_802_11_data_rate cmd;
	int ret = 0;

	FUNC4(LBS_DEB_CMD);

	FUNC8(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC0(sizeof(cmd));

	if (rate > 0) {
		cmd.action = FUNC0(CMD_ACT_SET_TX_FIX_RATE);
		cmd.rates[0] = FUNC2(rate);
		if (cmd.rates[0] == 0) {
			FUNC3("DATA_RATE: invalid requested rate of"
			            " 0x%02X\n", rate);
			ret = 0;
			goto out;
		}
		FUNC3("DATA_RATE: set fixed 0x%02X\n", cmd.rates[0]);
	} else {
		cmd.action = FUNC0(CMD_ACT_SET_TX_AUTO);
		FUNC3("DATA_RATE: setting auto\n");
	}

	ret = FUNC1(priv, CMD_802_11_DATA_RATE, &cmd);
	if (ret)
		goto out;

	FUNC5(LBS_DEB_CMD, "DATA_RATE_RESP", (u8 *) &cmd, sizeof (cmd));

	/* FIXME: get actual rates FW can do if this command actually returns
	 * all data rates supported.
	 */
	priv->cur_rate = FUNC7(cmd.rates[0]);
	FUNC3("DATA_RATE: current rate is 0x%02x\n", priv->cur_rate);

out:
	FUNC6(LBS_DEB_CMD, "ret %d", ret);
	return ret;
}