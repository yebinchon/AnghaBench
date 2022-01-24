#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {TYPE_4__* ops; int /*<<< orphan*/  sleep_work; int /*<<< orphan*/  autowakeup_work; int /*<<< orphan*/  intf_work; int /*<<< orphan*/  workqueue; TYPE_2__* hw; int /*<<< orphan*/  flags; int /*<<< orphan*/  bar_list_lock; int /*<<< orphan*/  bar_list; int /*<<< orphan*/  csr_mutex; int /*<<< orphan*/  irqmask_lock; int /*<<< orphan*/  drv_data; } ;
struct TYPE_10__ {int interface_modes; int /*<<< orphan*/  flags; scalar_t__* addr_mask; } ;
struct TYPE_9__ {scalar_t__ drv_data_size; TYPE_3__* lib; TYPE_1__* bcn; scalar_t__ max_ap_intf; } ;
struct TYPE_8__ {int (* probe_hw ) (struct rt2x00_dev*) ;} ;
struct TYPE_7__ {int vif_data_size; TYPE_5__* wiphy; } ;
struct TYPE_6__ {scalar_t__ entry_num; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_IFTYPE_WDS ; 
 int /*<<< orphan*/  WIPHY_FLAG_IBSS_RSN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  rt2x00lib_autowakeup ; 
 int /*<<< orphan*/  rt2x00lib_intf_scheduled ; 
 int FUNC10 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  rt2x00lib_sleep ; 
 int /*<<< orphan*/  FUNC13 (struct rt2x00_dev*) ; 
 int FUNC14 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*) ; 

int FUNC20(struct rt2x00_dev *rt2x00dev)
{
	int retval = -ENOMEM;

	/*
	 * Set possible interface combinations.
	 */
	FUNC12(rt2x00dev);

	/*
	 * Allocate the driver data memory, if necessary.
	 */
	if (rt2x00dev->ops->drv_data_size > 0) {
		rt2x00dev->drv_data = FUNC5(rt2x00dev->ops->drv_data_size,
			                      GFP_KERNEL);
		if (!rt2x00dev->drv_data) {
			retval = -ENOMEM;
			goto exit;
		}
	}

	FUNC17(&rt2x00dev->irqmask_lock);
	FUNC6(&rt2x00dev->csr_mutex);
	FUNC2(&rt2x00dev->bar_list);
	FUNC17(&rt2x00dev->bar_list_lock);

	FUNC16(DEVICE_STATE_PRESENT, &rt2x00dev->flags);

	/*
	 * Make room for rt2x00_intf inside the per-interface
	 * structure ieee80211_vif.
	 */
	rt2x00dev->hw->vif_data_size = sizeof(struct rt2x00_intf);

	/*
	 * rt2x00 devices can only use the last n bits of the MAC address
	 * for virtual interfaces.
	 */
	rt2x00dev->hw->wiphy->addr_mask[ETH_ALEN - 1] =
		(rt2x00dev->ops->max_ap_intf - 1);

	/*
	 * Determine which operating modes are supported, all modes
	 * which require beaconing, depend on the availability of
	 * beacon entries.
	 */
	rt2x00dev->hw->wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION);
	if (rt2x00dev->ops->bcn->entry_num > 0)
		rt2x00dev->hw->wiphy->interface_modes |=
		    FUNC0(NL80211_IFTYPE_ADHOC) |
		    FUNC0(NL80211_IFTYPE_AP) |
#ifdef CONFIG_MAC80211_MESH
		    BIT(NL80211_IFTYPE_MESH_POINT) |
#endif
		    FUNC0(NL80211_IFTYPE_WDS);

	rt2x00dev->hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

	/*
	 * Initialize work.
	 */
	rt2x00dev->workqueue =
	    FUNC4(FUNC19(rt2x00dev->hw->wiphy), 0);
	if (!rt2x00dev->workqueue) {
		retval = -ENOMEM;
		goto exit;
	}

	FUNC3(&rt2x00dev->intf_work, rt2x00lib_intf_scheduled);
	FUNC1(&rt2x00dev->autowakeup_work, rt2x00lib_autowakeup);
	FUNC3(&rt2x00dev->sleep_work, rt2x00lib_sleep);

	/*
	 * Let the driver probe the device to detect the capabilities.
	 */
	retval = rt2x00dev->ops->lib->probe_hw(rt2x00dev);
	if (retval) {
		FUNC7(rt2x00dev, "Failed to allocate device\n");
		goto exit;
	}

	/*
	 * Allocate queue array.
	 */
	retval = FUNC14(rt2x00dev);
	if (retval)
		goto exit;

	/*
	 * Initialize ieee80211 structure.
	 */
	retval = FUNC10(rt2x00dev);
	if (retval) {
		FUNC7(rt2x00dev, "Failed to initialize hw\n");
		goto exit;
	}

	/*
	 * Register extra components.
	 */
	FUNC13(rt2x00dev);
	FUNC9(rt2x00dev);
	FUNC8(rt2x00dev);
	FUNC15(rt2x00dev);

	return 0;

exit:
	FUNC11(rt2x00dev);

	return retval;
}