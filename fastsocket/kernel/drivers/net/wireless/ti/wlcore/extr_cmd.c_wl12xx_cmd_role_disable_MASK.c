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
typedef  scalar_t__ u8 ;
struct wl12xx_cmd_role_disable {scalar_t__ role_id; } ;
struct wl1271 {int /*<<< orphan*/  roles_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ROLE_DISABLE ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ WL12XX_INVALID_ROLE_ID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl12xx_cmd_role_disable*) ; 
 struct wl12xx_cmd_role_disable* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_cmd_role_disable*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct wl1271 *wl, u8 *role_id)
{
	struct wl12xx_cmd_role_disable *cmd;
	int ret;

	FUNC5(DEBUG_CMD, "cmd role disable");

	if (FUNC0(*role_id == WL12XX_INVALID_ROLE_ID))
		return -ENOENT;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}
	cmd->role_id = *role_id;

	ret = FUNC4(wl, CMD_ROLE_DISABLE, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC6("failed to initiate cmd role disable");
		goto out_free;
	}

	FUNC1(*role_id, wl->roles_map);
	*role_id = WL12XX_INVALID_ROLE_ID;

out_free:
	FUNC2(cmd);

out:
	return ret;
}