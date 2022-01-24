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
struct wl1251 {int dummy; } ;
struct acx_rate_policy {int rate_class_cnt; TYPE_1__* rate_class; } ;
struct TYPE_2__ {scalar_t__ aflags; void* long_retry_limit; void* short_retry_limit; int /*<<< orphan*/  enabled_rates; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_RATE_MASK_UNSPECIFIED ; 
 int /*<<< orphan*/  ACX_RATE_POLICY ; 
 void* ACX_RATE_RETRY_LIMIT ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_rate_policy*) ; 
 struct acx_rate_policy* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_rate_policy*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl)
{
	struct acx_rate_policy *acx;
	int ret = 0;

	FUNC3(DEBUG_ACX, "acx rate policies");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);

	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	/* configure one default (one-size-fits-all) rate class */
	acx->rate_class_cnt = 1;
	acx->rate_class[0].enabled_rates = ACX_RATE_MASK_UNSPECIFIED;
	acx->rate_class[0].short_retry_limit = ACX_RATE_RETRY_LIMIT;
	acx->rate_class[0].long_retry_limit = ACX_RATE_RETRY_LIMIT;
	acx->rate_class[0].aflags = 0;

	ret = FUNC2(wl, ACX_RATE_POLICY, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("Setting of rate policies failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}