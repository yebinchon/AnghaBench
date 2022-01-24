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
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int active_link_count; int /*<<< orphan*/  ap_fw_ps_map; } ;

/* Variables and functions */
 scalar_t__ WL1271_PS_STA_MAX_PACKETS ; 
 int FUNC0 (scalar_t__,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271*,struct wl12xx_vif*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271*,struct wl12xx_vif*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct wl1271 *wl,
					struct wl12xx_vif *wlvif,
					u8 hlid, u8 tx_pkts)
{
	bool fw_ps;

	fw_ps = FUNC0(hlid, (unsigned long *)&wl->ap_fw_ps_map);

	/*
	 * Wake up from high level PS if the STA is asleep with too little
	 * packets in FW or if the STA is awake.
	 */
	if (!fw_ps || tx_pkts < WL1271_PS_STA_MAX_PACKETS)
		FUNC1(wl, wlvif, hlid);

	/*
	 * Start high-level PS if the STA is asleep with enough blocks in FW.
	 * Make an exception if this is the only connected link. In this
	 * case FW-memory congestion is less of a problem.
	 * Note that a single connected STA means 3 active links, since we must
	 * account for the global and broadcast AP links. The "fw_ps" check
	 * assures us the third link is a STA connected to the AP. Otherwise
	 * the FW would not set the PSM bit.
	 */
	else if (wl->active_link_count > 3 && fw_ps &&
		 tx_pkts >= WL1271_PS_STA_MAX_PACKETS)
		FUNC2(wl, wlvif, hlid, true);
}