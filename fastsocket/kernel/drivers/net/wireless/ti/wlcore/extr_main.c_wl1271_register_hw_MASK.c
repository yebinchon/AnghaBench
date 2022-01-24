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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct wl1271 {int mac80211_registered; int nvs_len; scalar_t__ fuse_oui_addr; scalar_t__ fuse_nic_addr; int /*<<< orphan*/  hw; scalar_t__ nvs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct wl1271 *wl)
{
	int ret;
	u32 oui_addr = 0, nic_addr = 0;

	if (wl->mac80211_registered)
		return 0;

	if (wl->nvs_len >= 12) {
		/* NOTE: The wl->nvs->nvs element must be first, in
		 * order to simplify the casting, we assume it is at
		 * the beginning of the wl->nvs structure.
		 */
		u8 *nvs_ptr = (u8 *)wl->nvs;

		oui_addr =
			(nvs_ptr[11] << 16) + (nvs_ptr[10] << 8) + nvs_ptr[6];
		nic_addr =
			(nvs_ptr[5] << 16) + (nvs_ptr[4] << 8) + nvs_ptr[3];
	}

	/* if the MAC address is zeroed in the NVS derive from fuse */
	if (oui_addr == 0 && nic_addr == 0) {
		oui_addr = wl->fuse_oui_addr;
		/* fuse has the BD_ADDR, the WLAN addresses are the next two */
		nic_addr = wl->fuse_nic_addr + 1;
	}

	FUNC4(wl, oui_addr, nic_addr);

	ret = FUNC0(wl->hw);
	if (ret < 0) {
		FUNC2("unable to register mac80211 hw: %d", ret);
		goto out;
	}

	wl->mac80211_registered = true;

	FUNC1(wl);

	FUNC3("loaded");

out:
	return ret;
}