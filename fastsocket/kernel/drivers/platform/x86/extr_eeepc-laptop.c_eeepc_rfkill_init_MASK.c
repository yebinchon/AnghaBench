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
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wimax_rfkill; int /*<<< orphan*/  wwan3g_rfkill; int /*<<< orphan*/  bluetooth_rfkill; int /*<<< orphan*/  wlan_rfkill; int /*<<< orphan*/  hotplug_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ASL_3G ; 
 int /*<<< orphan*/  CM_ASL_BLUETOOTH ; 
 int /*<<< orphan*/  CM_ASL_WIMAX ; 
 int /*<<< orphan*/  CM_ASL_WLAN ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  RFKILL_TYPE_WIMAX ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  RFKILL_TYPE_WWAN ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 TYPE_1__* ehotk ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	int result = 0;

	FUNC5(&ehotk->hotplug_lock);

	result = FUNC0(&ehotk->wlan_rfkill,
				  "eeepc-wlan", dev,
				  RFKILL_TYPE_WLAN, CM_ASL_WLAN);

	if (result && result != -ENODEV)
		goto exit;

	result = FUNC0(&ehotk->bluetooth_rfkill,
				  "eeepc-bluetooth", dev,
				  RFKILL_TYPE_BLUETOOTH, CM_ASL_BLUETOOTH);

	if (result && result != -ENODEV)
		goto exit;

	result = FUNC0(&ehotk->wwan3g_rfkill,
				  "eeepc-wwan3g", dev,
				  RFKILL_TYPE_WWAN, CM_ASL_3G);

	if (result && result != -ENODEV)
		goto exit;

	result = FUNC0(&ehotk->wimax_rfkill,
				  "eeepc-wimax", dev,
				  RFKILL_TYPE_WIMAX, CM_ASL_WIMAX);

	if (result && result != -ENODEV)
		goto exit;

	result = FUNC4();
	/*
	 * If we get -EBUSY then something else is handling the PCI hotplug -
	 * don't fail in this case
	 */
	if (result == -EBUSY)
		result = 0;

	FUNC1("\\_SB.PCI0.P0P5");
	FUNC1("\\_SB.PCI0.P0P6");
	FUNC1("\\_SB.PCI0.P0P7");
	/*
	 * Refresh pci hotplug in case the rfkill state was changed during
	 * setup.
	 */
	FUNC3();

exit:
	if (result && result != -ENODEV)
		FUNC2();
	return result;
}