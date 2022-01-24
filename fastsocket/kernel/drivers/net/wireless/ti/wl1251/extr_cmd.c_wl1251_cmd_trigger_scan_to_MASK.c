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
typedef  int /*<<< orphan*/  u32 ;
struct wl1251_cmd_trigger_scan_to {int /*<<< orphan*/  timeout; } ;
struct wl1251 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TRIGGER_SCAN_TO ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1251_cmd_trigger_scan_to*) ; 
 struct wl1251_cmd_trigger_scan_to* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct wl1251_cmd_trigger_scan_to*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, u32 timeout)
{
	struct wl1251_cmd_trigger_scan_to *cmd;
	int ret;

	FUNC3(DEBUG_CMD, "cmd trigger scan to");

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->timeout = timeout;

	ret = FUNC2(wl, CMD_TRIGGER_SCAN_TO, cmd, sizeof(*cmd));
	if (ret < 0) {
		FUNC4("cmd trigger scan to failed: %d", ret);
		goto out;
	}

out:
	FUNC0(cmd);
	return ret;
}