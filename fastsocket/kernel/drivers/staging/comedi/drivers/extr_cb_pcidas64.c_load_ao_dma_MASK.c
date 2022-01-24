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
struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {unsigned int ao_dma_index; unsigned int* ao_buffer_bus_addr; void* plx9080_iobase; } ;

/* Variables and functions */
 unsigned int DMA_BUFFER_SIZE ; 
 int PLX_DMA0_PCI_ADDRESS_REG ; 
 unsigned int FUNC0 (struct comedi_device*,struct comedi_cmd const*) ; 
 TYPE_1__* FUNC1 (struct comedi_device*) ; 
 unsigned int FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, const struct comedi_cmd *cmd)
{
	unsigned int num_bytes;
	unsigned int next_transfer_addr;
	void *pci_addr_reg =
	    FUNC1(dev)->plx9080_iobase + PLX_DMA0_PCI_ADDRESS_REG;
	unsigned int buffer_index;

	do {
		buffer_index = FUNC1(dev)->ao_dma_index;
		/* don't overwrite data that hasn't been transferred yet */
		next_transfer_addr = FUNC2(pci_addr_reg);
		if (next_transfer_addr >=
		    FUNC1(dev)->ao_buffer_bus_addr[buffer_index]
		    && next_transfer_addr <
		    FUNC1(dev)->ao_buffer_bus_addr[buffer_index] +
		    DMA_BUFFER_SIZE)
			return;
		num_bytes = FUNC0(dev, cmd);
	} while (num_bytes >= DMA_BUFFER_SIZE);
}