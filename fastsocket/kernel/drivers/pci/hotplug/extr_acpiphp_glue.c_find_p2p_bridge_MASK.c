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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  subordinate; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  AE_OK ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**),int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC9(acpi_handle handle, u32 lvl, void *context, void **rv)
{
	acpi_status status;
	struct pci_dev *dev;

	dev = FUNC1(handle);
	if (!dev || !dev->subordinate)
		goto out;

	/* check if this bridge has ejectable slots */
	if ((FUNC5(handle) > 0)) {
		FUNC4("found PCI-to-PCI bridge at PCI %s\n", FUNC7(dev));
		FUNC3(handle);
	}

	/* search P2P bridges under this p2p bridge */
	status = FUNC2(ACPI_TYPE_DEVICE, handle, (u32)1,
				     find_p2p_bridge, NULL, NULL);
	if (FUNC0(status))
		FUNC8("find_p2p_bridge failed (error code = 0x%x)\n", status);

 out:
	FUNC6(dev);
	return AE_OK;
}