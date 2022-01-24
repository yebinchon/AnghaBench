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
struct wl12xx_vif {scalar_t__ inconn_count; int /*<<< orphan*/  role_id; } ;
struct wl1271_station {int in_connection; } ;
struct wl1271 {int /*<<< orphan*/  roc_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271*,struct wl12xx_vif*) ; 

__attribute__((used)) static void FUNC4(struct wl1271 *wl,
				     struct wl12xx_vif *wlvif,
				     struct wl1271_station *wl_sta,
				     bool in_connection)
{
	if (in_connection) {
		if (FUNC0(wl_sta->in_connection))
			return;
		wl_sta->in_connection = true;
		if (!wlvif->inconn_count++)
			FUNC3(wl, wlvif);
	} else {
		if (!wl_sta->in_connection)
			return;

		wl_sta->in_connection = false;
		wlvif->inconn_count--;
		if (FUNC0(wlvif->inconn_count < 0))
			return;

		if (!wlvif->inconn_count)
			if (FUNC1(wlvif->role_id, wl->roc_map))
				FUNC2(wl, wlvif->role_id);
	}
}