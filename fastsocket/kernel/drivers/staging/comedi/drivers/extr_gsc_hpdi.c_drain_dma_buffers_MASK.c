#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint32_t ;
struct comedi_device {TYPE_4__* read_subdev; } ;
struct TYPE_5__ {scalar_t__ stop_src; } ;
struct comedi_async {TYPE_1__ cmd; } ;
struct TYPE_8__ {struct comedi_async* async; } ;
struct TYPE_7__ {size_t dma_desc_index; int block_size; int num_dma_descriptors; int dio_count; TYPE_2__* dma_desc; int /*<<< orphan*/ * desc_dio_buffer; void* plx9080_iobase; } ;
struct TYPE_6__ {scalar_t__ next; int /*<<< orphan*/  pci_start_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int PLX_DMA0_PCI_ADDRESS_REG ; 
 int PLX_DMA1_PCI_ADDRESS_REG ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct comedi_device*) ; 
 unsigned long FUNC4 (void*) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev, unsigned int channel)
{
	struct comedi_async *async = dev->read_subdev->async;
	uint32_t next_transfer_addr;
	int j;
	int num_samples = 0;
	void *pci_addr_reg;

	if (channel)
		pci_addr_reg =
		    FUNC3(dev)->plx9080_iobase + PLX_DMA1_PCI_ADDRESS_REG;
	else
		pci_addr_reg =
		    FUNC3(dev)->plx9080_iobase + PLX_DMA0_PCI_ADDRESS_REG;

	/*  loop until we have read all the full buffers */
	j = 0;
	for (next_transfer_addr = FUNC4(pci_addr_reg);
	     (next_transfer_addr <
	      FUNC2(FUNC3(dev)->dma_desc[FUNC3(dev)->dma_desc_index].
			  pci_start_addr)
	      || next_transfer_addr >=
	      FUNC2(FUNC3(dev)->dma_desc[FUNC3(dev)->dma_desc_index].
			  pci_start_addr) + FUNC3(dev)->block_size)
	     && j < FUNC3(dev)->num_dma_descriptors; j++) {
		/*  transfer data from dma buffer to comedi buffer */
		num_samples = FUNC3(dev)->block_size / sizeof(uint32_t);
		if (async->cmd.stop_src == TRIG_COUNT) {
			if (num_samples > FUNC3(dev)->dio_count)
				num_samples = FUNC3(dev)->dio_count;
			FUNC3(dev)->dio_count -= num_samples;
		}
		FUNC1(dev->read_subdev,
					  FUNC3(dev)->desc_dio_buffer[FUNC3(dev)->
								     dma_desc_index],
					  num_samples * sizeof(uint32_t));
		FUNC3(dev)->dma_desc_index++;
		FUNC3(dev)->dma_desc_index %= FUNC3(dev)->num_dma_descriptors;

		FUNC0("next desc addr 0x%lx\n", (unsigned long)
			    FUNC3(dev)->dma_desc[FUNC3(dev)->dma_desc_index].
			    next);
		FUNC0("pci addr reg 0x%x\n", next_transfer_addr);
	}
	/*  XXX check for buffer overrun somehow */
}