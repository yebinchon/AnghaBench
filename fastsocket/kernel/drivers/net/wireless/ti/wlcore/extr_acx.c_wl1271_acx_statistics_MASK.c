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
struct TYPE_2__ {int /*<<< orphan*/  fw_stats_len; } ;
struct wl1271 {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_STATISTICS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int FUNC0 (struct wl1271*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int FUNC3(struct wl1271 *wl, void *stats)
{
	int ret;

	FUNC1(DEBUG_ACX, "acx statistics");

	ret = FUNC0(wl, ACX_STATISTICS, stats,
				     wl->stats.fw_stats_len);
	if (ret < 0) {
		FUNC2("acx statistics failed: %d", ret);
		return -ENOMEM;
	}

	return 0;
}