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

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  OCTEON_FEATURE_PCIE ; 
 int /*<<< orphan*/  OCTEON_IRQ_PCI_MSI0 ; 
 int /*<<< orphan*/  OCTEON_IRQ_PCI_MSI1 ; 
 int /*<<< orphan*/  OCTEON_IRQ_PCI_MSI2 ; 
 int /*<<< orphan*/  OCTEON_IRQ_PCI_MSI3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  octeon_msi_interrupt ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC4(void)
{
	if (FUNC0(OCTEON_FEATURE_PCIE)) {
		if (FUNC3(OCTEON_IRQ_PCI_MSI0, octeon_msi_interrupt,
				IRQF_SHARED,
				"MSI[0:63]", octeon_msi_interrupt))
			FUNC2("request_irq(OCTEON_IRQ_PCI_MSI0) failed");
	} else if (FUNC1()) {
		if (FUNC3(OCTEON_IRQ_PCI_MSI0, octeon_msi_interrupt,
				IRQF_SHARED,
				"MSI[0:15]", octeon_msi_interrupt))
			FUNC2("request_irq(OCTEON_IRQ_PCI_MSI0) failed");

		if (FUNC3(OCTEON_IRQ_PCI_MSI1, octeon_msi_interrupt,
				IRQF_SHARED,
				"MSI[16:31]", octeon_msi_interrupt))
			FUNC2("request_irq(OCTEON_IRQ_PCI_MSI1) failed");

		if (FUNC3(OCTEON_IRQ_PCI_MSI2, octeon_msi_interrupt,
				IRQF_SHARED,
				"MSI[32:47]", octeon_msi_interrupt))
			FUNC2("request_irq(OCTEON_IRQ_PCI_MSI2) failed");

		if (FUNC3(OCTEON_IRQ_PCI_MSI3, octeon_msi_interrupt,
				IRQF_SHARED,
				"MSI[48:63]", octeon_msi_interrupt))
			FUNC2("request_irq(OCTEON_IRQ_PCI_MSI3) failed");

	}
	return 0;
}