#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; int /*<<< orphan*/  name; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_6__ {scalar_t__ iw_mode; int num_dev_open; struct net_device* dev; scalar_t__ master_dev_auto_open; int /*<<< orphan*/  hw_module; int /*<<< orphan*/  comms_qual_update; int /*<<< orphan*/  info_queue; int /*<<< orphan*/  set_tim_queue; int /*<<< orphan*/  set_multicast_list_queue; int /*<<< orphan*/  reset_queue; TYPE_1__* func; scalar_t__ ap; scalar_t__ hw_ready; int /*<<< orphan*/  hostapd; struct net_device* ddev; } ;
typedef  TYPE_2__ local_info_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* hw_shutdown ) (struct net_device*,int /*<<< orphan*/ ) ;scalar_t__ (* card_present ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_FLOW ; 
 int /*<<< orphan*/  HOSTAP_HW_ENABLE_CMDCOMPL ; 
 int IFF_UP ; 
 scalar_t__ IW_MODE_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct hostap_interface* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct hostap_interface *iface;
	local_info_t *local;

	FUNC0(DEBUG_FLOW, "%s: prism2_close\n", dev->name);

	iface = FUNC5(dev);
	local = iface->local;

	if (dev == local->ddev) {
		FUNC9(local, WLAN_REASON_DEAUTH_LEAVING);
	}
#ifndef PRISM2_NO_KERNEL_IEEE80211_MGMT
	if (!local->hostapd && dev == local->dev &&
	    (!local->func->card_present || local->func->card_present(local)) &&
	    local->hw_ready && local->ap && local->iw_mode == IW_MODE_MASTER)
		FUNC3(dev, local->ap, 1);
#endif /* PRISM2_NO_KERNEL_IEEE80211_MGMT */

	if (dev == local->dev) {
		local->func->hw_shutdown(dev, HOSTAP_HW_ENABLE_CMDCOMPL);
	}

	if (FUNC7(dev)) {
		FUNC8(dev);
		FUNC6(dev);
	}

	FUNC1(&local->reset_queue);
	FUNC1(&local->set_multicast_list_queue);
	FUNC1(&local->set_tim_queue);
#ifndef PRISM2_NO_STATION_MODES
	FUNC1(&local->info_queue);
#endif
	FUNC1(&local->comms_qual_update);

	FUNC4(local->hw_module);

	local->num_dev_open--;

	if (dev != local->dev && local->dev->flags & IFF_UP &&
	    local->master_dev_auto_open && local->num_dev_open == 1) {
		/* Close master radio interface automatically if it was also
		 * opened automatically and we are now closing the last
		 * remaining non-master device. */
		FUNC2(local->dev);
	}

	return 0;
}