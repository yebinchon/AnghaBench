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
typedef  int uint64_t ;
typedef  int uint16_t ;
struct pci_dev {int dummy; } ;
struct msi_msg {int address_lo; int address_hi; scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ pos; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;

/* Variables and functions */
 int CVMX_NPEI_PCIE_MSI_RCV ; 
 int CVMX_PCI_MSI_RCV ; 
#define  OCTEON_DMA_BAR_TYPE_BIG 130 
#define  OCTEON_DMA_BAR_TYPE_PCIE 129 
#define  OCTEON_DMA_BAR_TYPE_SMALL 128 
 scalar_t__ OCTEON_IRQ_MSI_BIT0 ; 
 scalar_t__ PCI_MSI_FLAGS ; 
 int PCI_MSI_FLAGS_QMASK ; 
 int PCI_MSI_FLAGS_QSIZE ; 
 int msi_free_irq_bitmask ; 
 int /*<<< orphan*/  msi_free_irq_bitmask_lock ; 
 int msi_multiple_irq_bitmask ; 
 int octeon_dma_bar_type ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,struct msi_msg*) ; 

int FUNC8(struct pci_dev *dev, struct msi_desc *desc)
{
	struct msi_msg msg;
	uint16_t control;
	int configured_private_bits;
	int request_private_bits;
	int irq;
	int irq_step;
	uint64_t search_mask;

	/*
	 * Read the MSI config to figure out how many IRQs this device
	 * wants.  Most devices only want 1, which will give
	 * configured_private_bits and request_private_bits equal 0.
	 */
	FUNC1(dev, desc->msi_attrib.pos + PCI_MSI_FLAGS,
			     &control);

	/*
	 * If the number of private bits has been configured then use
	 * that value instead of the requested number. This gives the
	 * driver the chance to override the number of interrupts
	 * before calling pci_enable_msi().
	 */
	configured_private_bits = (control & PCI_MSI_FLAGS_QSIZE) >> 4;
	if (configured_private_bits == 0) {
		/* Nothing is configured, so use the hardware requested size */
		request_private_bits = (control & PCI_MSI_FLAGS_QMASK) >> 1;
	} else {
		/*
		 * Use the number of configured bits, assuming the
		 * driver wanted to override the hardware request
		 * value.
		 */
		request_private_bits = configured_private_bits;
	}

	/*
	 * The PCI 2.3 spec mandates that there are at most 32
	 * interrupts. If this device asks for more, only give it one.
	 */
	if (request_private_bits > 5)
		request_private_bits = 0;

try_only_one:
	/*
	 * The IRQs have to be aligned on a power of two based on the
	 * number being requested.
	 */
	irq_step = 1 << request_private_bits;

	/* Mask with one bit for each IRQ */
	search_mask = (1 << irq_step) - 1;

	/*
	 * We're going to search msi_free_irq_bitmask_lock for zero
	 * bits. This represents an MSI interrupt number that isn't in
	 * use.
	 */
	FUNC5(&msi_free_irq_bitmask_lock);
	for (irq = 0; irq < 64; irq += irq_step) {
		if ((msi_free_irq_bitmask & (search_mask << irq)) == 0) {
			msi_free_irq_bitmask |= search_mask << irq;
			msi_multiple_irq_bitmask |= (search_mask >> 1) << irq;
			break;
		}
	}
	FUNC6(&msi_free_irq_bitmask_lock);

	/* Make sure the search for available interrupts didn't fail */
	if (irq >= 64) {
		if (request_private_bits) {
			FUNC3("arch_setup_msi_irq: Unable to find %d free "
			       "interrupts, trying just one",
			       1 << request_private_bits);
			request_private_bits = 0;
			goto try_only_one;
		} else
			FUNC0("arch_setup_msi_irq: Unable to find a free MSI "
			      "interrupt");
	}

	/* MSI interrupts start at logical IRQ OCTEON_IRQ_MSI_BIT0 */
	irq += OCTEON_IRQ_MSI_BIT0;

	switch (octeon_dma_bar_type) {
	case OCTEON_DMA_BAR_TYPE_SMALL:
		/* When not using big bar, Bar 0 is based at 128MB */
		msg.address_lo =
			((128ul << 20) + CVMX_PCI_MSI_RCV) & 0xffffffff;
		msg.address_hi = ((128ul << 20) + CVMX_PCI_MSI_RCV) >> 32;
	case OCTEON_DMA_BAR_TYPE_BIG:
		/* When using big bar, Bar 0 is based at 0 */
		msg.address_lo = (0 + CVMX_PCI_MSI_RCV) & 0xffffffff;
		msg.address_hi = (0 + CVMX_PCI_MSI_RCV) >> 32;
		break;
	case OCTEON_DMA_BAR_TYPE_PCIE:
		/* When using PCIe, Bar 0 is based at 0 */
		/* FIXME CVMX_NPEI_MSI_RCV* other than 0? */
		msg.address_lo = (0 + CVMX_NPEI_PCIE_MSI_RCV) & 0xffffffff;
		msg.address_hi = (0 + CVMX_NPEI_PCIE_MSI_RCV) >> 32;
		break;
	default:
		FUNC0("arch_setup_msi_irq: Invalid octeon_dma_bar_type\n");
	}
	msg.data = irq - OCTEON_IRQ_MSI_BIT0;

	/* Update the number of IRQs the device has available to it */
	control &= ~PCI_MSI_FLAGS_QSIZE;
	control |= request_private_bits << 4;
	FUNC2(dev, desc->msi_attrib.pos + PCI_MSI_FLAGS,
			      control);

	FUNC4(irq, desc);
	FUNC7(irq, &msg);
	return 0;
}