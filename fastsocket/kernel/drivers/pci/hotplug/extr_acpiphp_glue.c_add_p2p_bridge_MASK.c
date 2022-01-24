#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct acpiphp_bridge {TYPE_2__* pci_dev; int /*<<< orphan*/  res_lock; TYPE_1__* pci_bus; int /*<<< orphan*/ * handle; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_5__ {TYPE_1__* subordinate; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_TYPE_P2P ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpiphp_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct acpiphp_bridge*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpiphp_bridge*) ; 
 struct acpiphp_bridge* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(acpi_handle *handle)
{
	struct acpiphp_bridge *bridge;

	bridge = FUNC6(sizeof(struct acpiphp_bridge), GFP_KERNEL);
	if (bridge == NULL) {
		FUNC2("out of memory\n");
		return;
	}

	bridge->type = BRIDGE_TYPE_P2P;
	bridge->handle = handle;
	FUNC1(bridge);

	bridge->pci_dev = FUNC0(handle);
	bridge->pci_bus = bridge->pci_dev->subordinate;
	if (!bridge->pci_bus) {
		FUNC2("This is not a PCI-to-PCI bridge!\n");
		goto err;
	}

	/*
	 * Grab a ref to the subordinate PCI bus in case the bus is
	 * removed via PCI core logical hotplug. The ref pins the bus
	 * (which we access during module unload).
	 */
	FUNC3(&bridge->pci_bus->dev);
	FUNC8(&bridge->res_lock);

	FUNC4(bridge);
	return;
 err:
	FUNC7(bridge->pci_dev);
	FUNC5(bridge);
	return;
}