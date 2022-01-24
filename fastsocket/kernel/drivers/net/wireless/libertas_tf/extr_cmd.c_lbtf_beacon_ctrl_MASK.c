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
struct lbtf_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_beacon_control {TYPE_1__ hdr; void* beacon_period; void* beacon_enable; void* action; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_BEACON_CTRL ; 
 int CMD_ACT_SET ; 
 int /*<<< orphan*/  LBTF_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lbtf_private*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct lbtf_private *priv, bool beacon_enable,
		     int beacon_int)
{
	struct cmd_ds_802_11_beacon_control cmd;
	FUNC2(LBTF_DEB_CMD);

	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(CMD_ACT_SET);
	cmd.beacon_enable = FUNC0(beacon_enable);
	cmd.beacon_period = FUNC0(beacon_int);

	FUNC1(priv, CMD_802_11_BEACON_CTRL, &cmd.hdr, sizeof(cmd));

	FUNC3(LBTF_DEB_CMD);
	return 0;
}