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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct TYPE_3__ {scalar_t__ rts_threshold; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_rts_threshold {int /*<<< orphan*/  threshold; int /*<<< orphan*/  role_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ACX ; 
 int /*<<< orphan*/  DOT11_RTS_THRESHOLD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IEEE80211_MAX_RTS_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_rts_threshold*) ; 
 struct acx_rts_threshold* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_rts_threshold*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			     u32 rts_threshold)
{
	struct acx_rts_threshold *rts;
	int ret;

	/*
	 * If the RTS threshold is not configured or out of range, use the
	 * default value.
	 */
	if (rts_threshold > IEEE80211_MAX_RTS_THRESHOLD)
		rts_threshold = wl->conf.rx.rts_threshold;

	FUNC4(DEBUG_ACX, "acx rts threshold: %d", rts_threshold);

	rts = FUNC2(sizeof(*rts), GFP_KERNEL);
	if (!rts) {
		ret = -ENOMEM;
		goto out;
	}

	rts->role_id = wlvif->role_id;
	rts->threshold = FUNC0((u16)rts_threshold);

	ret = FUNC3(wl, DOT11_RTS_THRESHOLD, rts, sizeof(*rts));
	if (ret < 0) {
		FUNC5("failed to set rts threshold: %d", ret);
		goto out;
	}

out:
	FUNC1(rts);
	return ret;
}