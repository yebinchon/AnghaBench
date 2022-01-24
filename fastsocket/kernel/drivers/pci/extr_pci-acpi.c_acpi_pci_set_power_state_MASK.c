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
typedef  int u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int pci_power_t ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
#define  ACPI_STATE_D0 136 
#define  ACPI_STATE_D1 135 
#define  ACPI_STATE_D2 134 
#define  ACPI_STATE_D3 133 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_INFO ; 
#define  PCI_D0 132 
#define  PCI_D1 131 
#define  PCI_D2 130 
#define  PCI_D3cold 129 
#define  PCI_D3hot 128 
 int FUNC2 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev, pci_power_t state)
{
	acpi_handle handle = FUNC1(&dev->dev);
	acpi_handle tmp;
	static const u8 state_conv[] = {
		[PCI_D0] = ACPI_STATE_D0,
		[PCI_D1] = ACPI_STATE_D1,
		[PCI_D2] = ACPI_STATE_D2,
		[PCI_D3hot] = ACPI_STATE_D3,
		[PCI_D3cold] = ACPI_STATE_D3
	};
	int error = -EINVAL;

	/* If the ACPI device has _EJ0, ignore the device */
	if (!handle || FUNC0(FUNC3(handle, "_EJ0", &tmp)))
		return -ENODEV;

	switch (state) {
	case PCI_D0:
	case PCI_D1:
	case PCI_D2:
	case PCI_D3hot:
	case PCI_D3cold:
		error = FUNC2(handle, state_conv[state]);
	}

	if (!error)
		FUNC4(KERN_INFO, &dev->dev,
				"power state changed by ACPI to D%d\n", state);

	return error;
}