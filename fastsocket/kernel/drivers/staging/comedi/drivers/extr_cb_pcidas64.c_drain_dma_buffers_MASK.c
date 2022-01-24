#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct comedi_device {TYPE_3__* read_subdev; } ;
struct TYPE_4__ {scalar_t__ stop_src; } ;
struct comedi_async {TYPE_1__ cmd; } ;
struct TYPE_6__ {struct comedi_async* async; } ;
struct TYPE_5__ {unsigned long* ai_buffer_bus_addr; size_t ai_dma_index; int ai_count; int /*<<< orphan*/ * ai_buffer; void* plx9080_iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 unsigned long DMA_BUFFER_SIZE ; 
 int PLX_DMA0_PCI_ADDRESS_REG ; 
 int PLX_DMA1_PCI_ADDRESS_REG ; 
 scalar_t__ TRIG_COUNT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct comedi_device*) ; 
 TYPE_2__* FUNC5 (struct comedi_device*) ; 
 unsigned long FUNC6 (void*) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev, unsigned int channel)
{
	struct comedi_async *async = dev->read_subdev->async;
	uint32_t next_transfer_addr;
	int j;
	int num_samples = 0;
	void *pci_addr_reg;

	if (channel)
		pci_addr_reg =
		    FUNC5(dev)->plx9080_iobase + PLX_DMA1_PCI_ADDRESS_REG;
	else
		pci_addr_reg =
		    FUNC5(dev)->plx9080_iobase + PLX_DMA0_PCI_ADDRESS_REG;

	/*  loop until we have read all the full buffers */
	for (j = 0, next_transfer_addr = FUNC6(pci_addr_reg);
	     (next_transfer_addr <
	      FUNC5(dev)->ai_buffer_bus_addr[FUNC5(dev)->ai_dma_index]
	      || next_transfer_addr >=
	      FUNC5(dev)->ai_buffer_bus_addr[FUNC5(dev)->ai_dma_index] +
	      DMA_BUFFER_SIZE) && j < FUNC1(FUNC2(dev)); j++) {
		/*  transfer data from dma buffer to comedi buffer */
		num_samples = FUNC4(dev);
		if (async->cmd.stop_src == TRIG_COUNT) {
			if (num_samples > FUNC5(dev)->ai_count)
				num_samples = FUNC5(dev)->ai_count;
			FUNC5(dev)->ai_count -= num_samples;
		}
		FUNC3(dev->read_subdev,
					  FUNC5(dev)->ai_buffer[FUNC5(dev)->
							       ai_dma_index],
					  num_samples * sizeof(uint16_t));
		FUNC5(dev)->ai_dma_index =
		    (FUNC5(dev)->ai_dma_index +
		     1) % FUNC1(FUNC2(dev));

		FUNC0("next buffer addr 0x%lx\n",
			    (unsigned long)FUNC5(dev)->
			    ai_buffer_bus_addr[FUNC5(dev)->ai_dma_index]);
		FUNC0("pci addr reg 0x%x\n", next_transfer_addr);
	}
	/* XXX check for dma ring buffer overrun (use end-of-chain bit to mark last
	 * unused buffer) */
}