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
typedef  int /*<<< orphan*/  u16 ;
struct wl1271 {int dummy; } ;
struct cmd_enabledisable_path {int channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DISABLE_RX ; 
 int /*<<< orphan*/  CMD_DISABLE_TX ; 
 int /*<<< orphan*/  CMD_ENABLE_RX ; 
 int /*<<< orphan*/  CMD_ENABLE_TX ; 
 int /*<<< orphan*/  DEBUG_BOOT ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cmd_enabledisable_path*) ; 
 struct cmd_enabledisable_path* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct cmd_enabledisable_path*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

int FUNC5(struct wl1271 *wl, bool enable)
{
	struct cmd_enabledisable_path *cmd;
	int ret;
	u16 cmd_rx, cmd_tx;

	FUNC3(DEBUG_CMD, "cmd data path");

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	/* the channel here is only used for calibration, so hardcoded to 1 */
	cmd->channel = 1;

	if (enable) {
		cmd_rx = CMD_ENABLE_RX;
		cmd_tx = CMD_ENABLE_TX;
	} else {
		cmd_rx = CMD_DISABLE_RX;
		cmd_tx = CMD_DISABLE_TX;
	}

	ret = FUNC2(wl, cmd_rx, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC4("rx %s cmd for channel %d failed",
			     enable ? "start" : "stop", cmd->channel);
		goto out;
	}

	FUNC3(DEBUG_BOOT, "rx %s cmd channel %d",
		     enable ? "start" : "stop", cmd->channel);

	ret = FUNC2(wl, cmd_tx, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC4("tx %s cmd for channel %d failed",
			     enable ? "start" : "stop", cmd->channel);
		goto out;
	}

	FUNC3(DEBUG_BOOT, "tx %s cmd channel %d",
		     enable ? "start" : "stop", cmd->channel);

out:
	FUNC0(cmd);
	return ret;
}