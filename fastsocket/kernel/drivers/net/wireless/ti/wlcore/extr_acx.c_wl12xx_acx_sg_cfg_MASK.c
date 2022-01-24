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
struct conf_sg_settings {int /*<<< orphan*/ * params; } ;
struct TYPE_2__ {struct conf_sg_settings sg; } ;
struct wl1271 {TYPE_1__ conf; } ;
struct acx_bt_wlan_coex_param {int /*<<< orphan*/  param_idx; int /*<<< orphan*/ * params; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_SG_CFG ; 
 int /*<<< orphan*/  CONF_SG_PARAMS_ALL ; 
 int CONF_SG_PARAMS_MAX ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_bt_wlan_coex_param*) ; 
 struct acx_bt_wlan_coex_param* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_bt_wlan_coex_param*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct acx_bt_wlan_coex_param *param;
	struct conf_sg_settings *c = &wl->conf.sg;
	int i, ret;

	FUNC4(DEBUG_ACX, "acx sg cfg");

	param = FUNC2(sizeof(*param), GFP_KERNEL);
	if (!param) {
		ret = -ENOMEM;
		goto out;
	}

	/* BT-WLAN coext parameters */
	for (i = 0; i < CONF_SG_PARAMS_MAX; i++)
		param->params[i] = FUNC0(c->params[i]);
	param->param_idx = CONF_SG_PARAMS_ALL;

	ret = FUNC3(wl, ACX_SG_CFG, param, sizeof(*param));
	if (ret < 0) {
		FUNC5("failed to set sg config: %d", ret);
		goto out;
	}

out:
	FUNC1(param);
	return ret;
}