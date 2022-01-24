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
struct TYPE_2__ {int /*<<< orphan*/ * wimax_rfkill; int /*<<< orphan*/ * wwan3g_rfkill; int /*<<< orphan*/ * bluetooth_rfkill; scalar_t__ hotplug_slot; int /*<<< orphan*/ * wlan_rfkill; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* ehotk ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC1("\\_SB.PCI0.P0P5");
	FUNC1("\\_SB.PCI0.P0P6");
	FUNC1("\\_SB.PCI0.P0P7");
	if (ehotk->wlan_rfkill) {
		FUNC4(ehotk->wlan_rfkill);
		FUNC3(ehotk->wlan_rfkill);
		ehotk->wlan_rfkill = NULL;
	}
	/*
	 * Refresh pci hotplug in case the rfkill state was changed after
	 * eeepc_unregister_rfkill_notifier()
	 */
	FUNC0();
	if (ehotk->hotplug_slot)
		FUNC2(ehotk->hotplug_slot);

	if (ehotk->bluetooth_rfkill) {
		FUNC4(ehotk->bluetooth_rfkill);
		FUNC3(ehotk->bluetooth_rfkill);
		ehotk->bluetooth_rfkill = NULL;
	}
	if (ehotk->wwan3g_rfkill) {
		FUNC4(ehotk->wwan3g_rfkill);
		FUNC3(ehotk->wwan3g_rfkill);
		ehotk->wwan3g_rfkill = NULL;
	}
	if (ehotk->wimax_rfkill) {
		FUNC4(ehotk->wimax_rfkill);
		FUNC3(ehotk->wimax_rfkill);
		ehotk->wimax_rfkill = NULL;
	}
}