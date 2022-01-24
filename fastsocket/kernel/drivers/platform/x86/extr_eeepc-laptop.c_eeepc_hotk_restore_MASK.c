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
struct TYPE_2__ {scalar_t__ wimax_rfkill; scalar_t__ wwan3g_rfkill; scalar_t__ bluetooth_rfkill; scalar_t__ wlan_rfkill; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ASL_3G ; 
 int /*<<< orphan*/  CM_ASL_BLUETOOTH ; 
 int /*<<< orphan*/  CM_ASL_WIMAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* ehotk ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(struct device *device)
{
	/* Refresh both wlan rfkill state and pci hotplug */
	if (ehotk->wlan_rfkill)
		FUNC0();

	if (ehotk->bluetooth_rfkill)
		FUNC2(ehotk->bluetooth_rfkill,
				    FUNC1(CM_ASL_BLUETOOTH) != 1);
	if (ehotk->wwan3g_rfkill)
		FUNC2(ehotk->wwan3g_rfkill,
				    FUNC1(CM_ASL_3G) != 1);
	if (ehotk->wimax_rfkill)
		FUNC2(ehotk->wimax_rfkill,
				    FUNC1(CM_ASL_WIMAX) != 1);

	return 0;
}