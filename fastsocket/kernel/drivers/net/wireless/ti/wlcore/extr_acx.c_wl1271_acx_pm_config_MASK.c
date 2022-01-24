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
struct wl1271_acx_pm_config {int /*<<< orphan*/  host_fast_wakeup_support; int /*<<< orphan*/  host_clk_settling_time; } ;
struct conf_pm_config_settings {int /*<<< orphan*/  host_fast_wakeup_support; int /*<<< orphan*/  host_clk_settling_time; } ;
struct TYPE_2__ {struct conf_pm_config_settings pm_config; } ;
struct wl1271 {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_PM_CONFIG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271_acx_pm_config*) ; 
 struct wl1271_acx_pm_config* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_pm_config*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct wl1271_acx_pm_config *acx = NULL;
	struct  conf_pm_config_settings *c = &wl->conf.pm_config;
	int ret = 0;

	FUNC4(DEBUG_ACX, "acx pm config");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->host_clk_settling_time = FUNC0(c->host_clk_settling_time);
	acx->host_fast_wakeup_support = c->host_fast_wakeup_support;

	ret = FUNC3(wl, ACX_PM_CONFIG, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("acx pm config failed: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}