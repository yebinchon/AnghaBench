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
struct pci_dev {int dummy; } ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hotplug_lock; scalar_t__ hotplug_slot; scalar_t__ wlan_rfkill; } ;

/* Variables and functions */
 int FUNC0 () ; 
 TYPE_1__* ehotk ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_bus* FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC7 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct pci_dev* FUNC9 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC13(void)
{
	struct pci_dev *dev;
	struct pci_bus *bus;
	bool blocked = FUNC0();

	if (ehotk->wlan_rfkill)
		FUNC12(ehotk->wlan_rfkill, blocked);

	FUNC1(&ehotk->hotplug_lock);

	if (ehotk->hotplug_slot) {
		bus = FUNC6(0, 1);
		if (!bus) {
			FUNC11("Unable to find PCI bus 1?\n");
			goto out_unlock;
		}

		if (!blocked) {
			dev = FUNC7(bus, 0);
			if (dev) {
				/* Device already present */
				FUNC5(dev);
				goto out_unlock;
			}
			dev = FUNC9(bus, 0);
			if (dev) {
				FUNC4(bus);
				if (FUNC3(dev))
					FUNC10("Unable to hotplug wifi\n");
			}
		} else {
			dev = FUNC7(bus, 0);
			if (dev) {
				FUNC8(dev);
				FUNC5(dev);
			}
		}
	}

out_unlock:
	FUNC2(&ehotk->hotplug_lock);
}