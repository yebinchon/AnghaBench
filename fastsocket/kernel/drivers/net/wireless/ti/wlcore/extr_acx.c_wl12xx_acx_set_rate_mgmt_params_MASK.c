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
struct wl12xx_acx_set_rate_mgmt_params {int /*<<< orphan*/  rate_retry_policy; int /*<<< orphan*/  rate_check_down; int /*<<< orphan*/  rate_check_up; int /*<<< orphan*/  per_beta2_shift; int /*<<< orphan*/  per_beta1_shift; int /*<<< orphan*/  per_add_shift; int /*<<< orphan*/  per_alpha_shift; int /*<<< orphan*/  tx_fail_high_th; int /*<<< orphan*/  tx_fail_low_th; int /*<<< orphan*/  inverse_curiosity_factor; void* max_per; void* per_th2; void* per_th1; void* per_add; void* rate_retry_score; int /*<<< orphan*/  index; } ;
struct conf_rate_policy_settings {int /*<<< orphan*/  rate_retry_policy; int /*<<< orphan*/  rate_check_down; int /*<<< orphan*/  rate_check_up; int /*<<< orphan*/  per_beta2_shift; int /*<<< orphan*/  per_beta1_shift; int /*<<< orphan*/  per_add_shift; int /*<<< orphan*/  per_alpha_shift; int /*<<< orphan*/  tx_fail_high_th; int /*<<< orphan*/  tx_fail_low_th; int /*<<< orphan*/  inverse_curiosity_factor; int /*<<< orphan*/  max_per; int /*<<< orphan*/  per_th2; int /*<<< orphan*/  per_th1; int /*<<< orphan*/  per_add; int /*<<< orphan*/  rate_retry_score; } ;
struct TYPE_2__ {struct conf_rate_policy_settings rate; } ;
struct wl1271 {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_RATE_MGMT_ALL_PARAMS ; 
 int /*<<< orphan*/  ACX_SET_RATE_MGMT_PARAMS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl12xx_acx_set_rate_mgmt_params*) ; 
 struct wl12xx_acx_set_rate_mgmt_params* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_acx_set_rate_mgmt_params*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

int FUNC7(struct wl1271 *wl)
{
	struct wl12xx_acx_set_rate_mgmt_params *acx = NULL;
	struct conf_rate_policy_settings *conf = &wl->conf.rate;
	int ret;

	FUNC5(DEBUG_ACX, "acx set rate mgmt params");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx)
		return -ENOMEM;

	acx->index = ACX_RATE_MGMT_ALL_PARAMS;
	acx->rate_retry_score = FUNC0(conf->rate_retry_score);
	acx->per_add = FUNC0(conf->per_add);
	acx->per_th1 = FUNC0(conf->per_th1);
	acx->per_th2 = FUNC0(conf->per_th2);
	acx->max_per = FUNC0(conf->max_per);
	acx->inverse_curiosity_factor = conf->inverse_curiosity_factor;
	acx->tx_fail_low_th = conf->tx_fail_low_th;
	acx->tx_fail_high_th = conf->tx_fail_high_th;
	acx->per_alpha_shift = conf->per_alpha_shift;
	acx->per_add_shift = conf->per_add_shift;
	acx->per_beta1_shift = conf->per_beta1_shift;
	acx->per_beta2_shift = conf->per_beta2_shift;
	acx->rate_check_up = conf->rate_check_up;
	acx->rate_check_down = conf->rate_check_down;
	FUNC3(acx->rate_retry_policy, conf->rate_retry_policy,
	       sizeof(acx->rate_retry_policy));

	ret = FUNC4(wl, ACX_SET_RATE_MGMT_PARAMS,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC6("acx set rate mgmt params failed: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}