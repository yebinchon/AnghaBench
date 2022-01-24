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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ action; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_NPI_NPI_MSI_RCV ; 
 int /*<<< orphan*/  CVMX_PEXP_NPEI_MSI_RCV0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ OCTEON_DMA_BAR_TYPE_PCIE ; 
 int /*<<< orphan*/  OCTEON_FEATURE_PCIE ; 
 int OCTEON_IRQ_MSI_BIT0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* irq_desc ; 
 scalar_t__ octeon_dma_bar_type ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int cpl, void *dev_id)
{
	uint64_t msi_bits;
	int irq;

	if (octeon_dma_bar_type == OCTEON_DMA_BAR_TYPE_PCIE)
		msi_bits = FUNC0(CVMX_PEXP_NPEI_MSI_RCV0);
	else
		msi_bits = FUNC0(CVMX_NPI_NPI_MSI_RCV);
	irq = FUNC3(msi_bits);
	if (irq) {
		irq += OCTEON_IRQ_MSI_BIT0 - 1;
		if (irq_desc[irq].action) {
			FUNC2(irq);
			return IRQ_HANDLED;
		} else {
			FUNC5("Spurious MSI interrupt %d\n", irq);
			if (FUNC4(OCTEON_FEATURE_PCIE)) {
				/* These chips have PCIe */
				FUNC1(CVMX_PEXP_NPEI_MSI_RCV0,
					       1ull << (irq -
							OCTEON_IRQ_MSI_BIT0));
			} else {
				/* These chips have PCI */
				FUNC1(CVMX_NPI_NPI_MSI_RCV,
					       1ull << (irq -
							OCTEON_IRQ_MSI_BIT0));
			}
		}
	}
	return IRQ_NONE;
}