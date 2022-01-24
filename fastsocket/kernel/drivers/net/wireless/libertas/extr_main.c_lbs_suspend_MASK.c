#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lbs_private {int wol_criteria; } ;
struct cmd_header {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_HOST_SLEEP_ACTIVATE ; 
 int EINVAL ; 
 int /*<<< orphan*/  LBS_DEB_FW ; 
 int FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_header*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  lbs_suspend_callback ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_header*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct lbs_private *priv)
{
	struct cmd_header cmd;
	int ret;

	FUNC1(LBS_DEB_FW);

	if (priv->wol_criteria == 0xffffffff) {
		FUNC3("Suspend attempt without configuring wake params!\n");
		return -EINVAL;
	}

	FUNC4(&cmd, 0, sizeof(cmd));

	ret = FUNC0(priv, CMD_802_11_HOST_SLEEP_ACTIVATE, &cmd,
			sizeof(cmd), lbs_suspend_callback, 0);
	if (ret)
		FUNC3("HOST_SLEEP_ACTIVATE failed: %d\n", ret);

	FUNC2(LBS_DEB_FW, "ret %d", ret);
	return ret;
}