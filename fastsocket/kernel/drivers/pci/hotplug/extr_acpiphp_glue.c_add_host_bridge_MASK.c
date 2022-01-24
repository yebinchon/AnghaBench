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
struct acpiphp_bridge {int /*<<< orphan*/  res_lock; int /*<<< orphan*/  pci_bus; int /*<<< orphan*/ * handle; int /*<<< orphan*/  type; } ;
struct acpi_pci_root {int /*<<< orphan*/  bus; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_TYPE_HOST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct acpi_pci_root* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpiphp_bridge*) ; 
 struct acpiphp_bridge* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(acpi_handle *handle)
{
	struct acpiphp_bridge *bridge;
	struct acpi_pci_root *root = FUNC0(handle);

	bridge = FUNC2(sizeof(struct acpiphp_bridge), GFP_KERNEL);
	if (bridge == NULL)
		return;

	bridge->type = BRIDGE_TYPE_HOST;
	bridge->handle = handle;

	bridge->pci_bus = root->bus;

	FUNC3(&bridge->res_lock);

	FUNC1(bridge);
}