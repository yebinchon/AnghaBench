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
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl12xx_cmd_stop_channel_switch {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STOP_CHANNEL_SWICTH ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl12xx_cmd_stop_channel_switch*) ; 
 struct wl12xx_cmd_stop_channel_switch* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_cmd_stop_channel_switch*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	struct wl12xx_cmd_stop_channel_switch *cmd;
	int ret;

	FUNC3(DEBUG_ACX, "cmd stop channel switch");

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	cmd->role_id = wlvif->role_id;

	ret = FUNC2(wl, CMD_STOP_CHANNEL_SWICTH, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC4("failed to stop channel switch command");
		goto out_free;
	}

out_free:
	FUNC0(cmd);

out:
	return ret;
}