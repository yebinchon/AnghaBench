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
typedef  int u8 ;
struct lbtf_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rf_channel {void* channel; void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_RF_CHANNEL ; 
 int CMD_OPT_802_11_RF_CHANNEL_SET ; 
 int /*<<< orphan*/  LBTF_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbtf_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_rf_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC4(struct lbtf_private *priv, u8 channel)
{
	int ret = 0;
	struct cmd_ds_802_11_rf_channel cmd;

	FUNC2(LBTF_DEB_CMD);

	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(CMD_OPT_802_11_RF_CHANNEL_SET);
	cmd.channel = FUNC0(channel);

	ret = FUNC1(priv, CMD_802_11_RF_CHANNEL, &cmd);
	FUNC3(LBTF_DEB_CMD, "ret %d", ret);
	return ret;
}