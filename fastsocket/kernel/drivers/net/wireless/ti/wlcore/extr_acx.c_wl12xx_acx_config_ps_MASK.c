#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wl12xx_vif {int /*<<< orphan*/  basic_rate; } ;
struct wl1271_acx_config_ps {int /*<<< orphan*/  null_data_rate; int /*<<< orphan*/  enter_retries; int /*<<< orphan*/  exit_retries; } ;
struct TYPE_4__ {int /*<<< orphan*/  psm_entry_retries; int /*<<< orphan*/  psm_exit_retries; } ;
struct TYPE_3__ {TYPE_2__ conn; } ;
struct wl1271 {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_CONFIG_PS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271_acx_config_ps*) ; 
 struct wl1271_acx_config_ps* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_config_ps*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	struct wl1271_acx_config_ps *config_ps;
	int ret;

	FUNC4(DEBUG_ACX, "acx config ps");

	config_ps = FUNC2(sizeof(*config_ps), GFP_KERNEL);
	if (!config_ps) {
		ret = -ENOMEM;
		goto out;
	}

	config_ps->exit_retries = wl->conf.conn.psm_exit_retries;
	config_ps->enter_retries = wl->conf.conn.psm_entry_retries;
	config_ps->null_data_rate = FUNC0(wlvif->basic_rate);

	ret = FUNC3(wl, ACX_CONFIG_PS, config_ps,
				   sizeof(*config_ps));

	if (ret < 0) {
		FUNC5("acx config ps failed: %d", ret);
		goto out;
	}

out:
	FUNC1(config_ps);
	return ret;
}