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
struct pci_bus {int dummy; } ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct pci_bus*) ; 
 int FUNC3 (scalar_t__) ; 

int FUNC4(struct pci_bus *pbus, acpi_handle handle)
{
	acpi_handle bridge_handle, parent_handle;

	if (!(bridge_handle = FUNC2(pbus)))
		return 0;
	if ((FUNC0(FUNC1(handle, &parent_handle))))
		return 0;
	if (bridge_handle != parent_handle)
		return 0;
	return FUNC3(handle);
}