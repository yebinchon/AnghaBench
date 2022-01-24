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
struct wl1251 {int dummy; } ;
struct acx_beacon_filter_option {int enable; scalar_t__ max_num_beacons; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_BEACON_FILTER_OPT ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_beacon_filter_option*) ; 
 struct acx_beacon_filter_option* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_beacon_filter_option*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, bool enable_filter)
{
	struct acx_beacon_filter_option *beacon_filter;
	int ret;

	FUNC3(DEBUG_ACX, "acx beacon filter opt");

	beacon_filter = FUNC1(sizeof(*beacon_filter), GFP_KERNEL);
	if (!beacon_filter) {
		ret = -ENOMEM;
		goto out;
	}

	beacon_filter->enable = enable_filter;
	beacon_filter->max_num_beacons = 0;

	ret = FUNC2(wl, ACX_BEACON_FILTER_OPT,
				   beacon_filter, sizeof(*beacon_filter));
	if (ret < 0) {
		FUNC4("failed to set beacon filter opt: %d", ret);
		goto out;
	}

out:
	FUNC0(beacon_filter);
	return ret;
}