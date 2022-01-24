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
struct wl12xx_vif {int dummy; } ;
struct wl1271_cmd_header {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct wl1271 {TYPE_1__ scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STOP_SCAN ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ WL1271_SCAN_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271_cmd_header*) ; 
 struct wl1271_cmd_header* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_cmd_header*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	struct wl1271_cmd_header *cmd = NULL;
	int ret = 0;

	if (FUNC0(wl->scan.state == WL1271_SCAN_STATE_IDLE))
		return -EINVAL;

	FUNC4(DEBUG_CMD, "cmd scan stop");

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC3(wl, CMD_STOP_SCAN, cmd,
			      sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC5("cmd stop_scan failed");
		goto out;
	}
out:
	FUNC1(cmd);
	return ret;
}