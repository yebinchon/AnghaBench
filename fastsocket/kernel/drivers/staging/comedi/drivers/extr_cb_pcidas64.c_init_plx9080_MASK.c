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
typedef  int uint32_t ;
struct comedi_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ layout; } ;
struct TYPE_4__ {void* plx9080_iobase; int plx_intcsr_bits; int /*<<< orphan*/  plx_control_bits; } ;

/* Variables and functions */
 int BIGEND_DMA0 ; 
 int BIGEND_DMA1 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ICS_AERR ; 
 int ICS_DMA0_E ; 
 int ICS_DMA1_E ; 
 int ICS_LIE ; 
 int ICS_PAIE ; 
 int ICS_PERR ; 
 int ICS_PIE ; 
 int ICS_PLIE ; 
 scalar_t__ LAYOUT_4020 ; 
 int PLX_BIGEND_REG ; 
 int PLX_CONTROL_REG ; 
 int PLX_DEMAND_MODE_BIT ; 
 int PLX_DMA0_CS_REG ; 
 int PLX_DMA0_DESCRIPTOR_REG ; 
 int PLX_DMA0_LOCAL_ADDRESS_REG ; 
 int PLX_DMA0_MODE_REG ; 
 int PLX_DMA0_PCI_ADDRESS_REG ; 
 int PLX_DMA0_THRESHOLD_REG ; 
 int PLX_DMA0_TRANSFER_SIZE_REG ; 
 int PLX_DMA1_MODE_REG ; 
 int PLX_DMA_EN_READYIN_BIT ; 
 int PLX_DMA_INTR_PCI_BIT ; 
 int PLX_DMA_LOCAL_BURST_EN_BIT ; 
 int PLX_EN_BTERM_BIT ; 
 int PLX_EN_CHAIN_BIT ; 
 int PLX_EN_DMA_DONE_INTR_BIT ; 
 int PLX_ID_REG ; 
 int PLX_INTRCS_REG ; 
 int PLX_LOCAL_ADDR_CONST_BIT ; 
 int PLX_LOCAL_BUS_16_WIDE_BITS ; 
 int PLX_LOCAL_BUS_32_WIDE_BITS ; 
 int PLX_MARB_REG ; 
 int PLX_REGION0_REG ; 
 int PLX_REGION1_REG ; 
 int PLX_REVISION_REG ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 TYPE_1__* FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int,void*) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev)
{
	uint32_t bits;
	void *plx_iobase = FUNC5(dev)->plx9080_iobase;

	FUNC5(dev)->plx_control_bits =
	    FUNC7(FUNC5(dev)->plx9080_iobase + PLX_CONTROL_REG);

	/*  plx9080 dump */
	FUNC0(" plx interrupt status 0x%x\n",
		    FUNC7(plx_iobase + PLX_INTRCS_REG));
	FUNC0(" plx id bits 0x%x\n", FUNC7(plx_iobase + PLX_ID_REG));
	FUNC0(" plx control reg 0x%x\n", FUNC5(dev)->plx_control_bits);
	FUNC0(" plx mode/arbitration reg 0x%x\n",
		    FUNC7(plx_iobase + PLX_MARB_REG));
	FUNC0(" plx region0 reg 0x%x\n",
		    FUNC7(plx_iobase + PLX_REGION0_REG));
	FUNC0(" plx region1 reg 0x%x\n",
		    FUNC7(plx_iobase + PLX_REGION1_REG));

	FUNC0(" plx revision 0x%x\n",
		    FUNC7(plx_iobase + PLX_REVISION_REG));
	FUNC0(" plx dma channel 0 mode 0x%x\n",
		    FUNC7(plx_iobase + PLX_DMA0_MODE_REG));
	FUNC0(" plx dma channel 1 mode 0x%x\n",
		    FUNC7(plx_iobase + PLX_DMA1_MODE_REG));
	FUNC0(" plx dma channel 0 pci address 0x%x\n",
		    FUNC7(plx_iobase + PLX_DMA0_PCI_ADDRESS_REG));
	FUNC0(" plx dma channel 0 local address 0x%x\n",
		    FUNC7(plx_iobase + PLX_DMA0_LOCAL_ADDRESS_REG));
	FUNC0(" plx dma channel 0 transfer size 0x%x\n",
		    FUNC7(plx_iobase + PLX_DMA0_TRANSFER_SIZE_REG));
	FUNC0(" plx dma channel 0 descriptor 0x%x\n",
		    FUNC7(plx_iobase + PLX_DMA0_DESCRIPTOR_REG));
	FUNC0(" plx dma channel 0 command status 0x%x\n",
		    FUNC6(plx_iobase + PLX_DMA0_CS_REG));
	FUNC0(" plx dma channel 0 threshold 0x%x\n",
		    FUNC7(plx_iobase + PLX_DMA0_THRESHOLD_REG));
	FUNC0(" plx bigend 0x%x\n", FUNC7(plx_iobase + PLX_BIGEND_REG));

#ifdef __BIG_ENDIAN
	bits = BIGEND_DMA0 | BIGEND_DMA1;
#else
	bits = 0;
#endif
	FUNC8(bits, FUNC5(dev)->plx9080_iobase + PLX_BIGEND_REG);

	FUNC4(dev);

	FUNC1(dev, 0);
	FUNC1(dev, 1);

	/*  configure dma0 mode */
	bits = 0;
	/*  enable ready input, not sure if this is necessary */
	bits |= PLX_DMA_EN_READYIN_BIT;
	/*  enable bterm, not sure if this is necessary */
	bits |= PLX_EN_BTERM_BIT;
	/*  enable dma chaining */
	bits |= PLX_EN_CHAIN_BIT;
	/*  enable interrupt on dma done (probably don't need this, since chain never finishes) */
	bits |= PLX_EN_DMA_DONE_INTR_BIT;
	/*  don't increment local address during transfers (we are transferring from a fixed fifo register) */
	bits |= PLX_LOCAL_ADDR_CONST_BIT;
	/*  route dma interrupt to pci bus */
	bits |= PLX_DMA_INTR_PCI_BIT;
	/*  enable demand mode */
	bits |= PLX_DEMAND_MODE_BIT;
	/*  enable local burst mode */
	bits |= PLX_DMA_LOCAL_BURST_EN_BIT;
	/*  4020 uses 32 bit dma */
	if (FUNC3(dev)->layout == LAYOUT_4020) {
		bits |= PLX_LOCAL_BUS_32_WIDE_BITS;
	} else {		/*  localspace0 bus is 16 bits wide */
		bits |= PLX_LOCAL_BUS_16_WIDE_BITS;
	}
	FUNC8(bits, plx_iobase + PLX_DMA1_MODE_REG);
	if (FUNC2(FUNC3(dev)))
		FUNC8(bits, plx_iobase + PLX_DMA0_MODE_REG);

	/*  enable interrupts on plx 9080 */
	FUNC5(dev)->plx_intcsr_bits |=
	    ICS_AERR | ICS_PERR | ICS_PIE | ICS_PLIE | ICS_PAIE | ICS_LIE |
	    ICS_DMA0_E | ICS_DMA1_E;
	FUNC8(FUNC5(dev)->plx_intcsr_bits,
	       FUNC5(dev)->plx9080_iobase + PLX_INTRCS_REG);
}