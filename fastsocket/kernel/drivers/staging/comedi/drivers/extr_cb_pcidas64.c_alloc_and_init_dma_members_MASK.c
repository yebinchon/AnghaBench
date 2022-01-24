#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct plx_dma_desc {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_10__ {scalar_t__ layout; } ;
struct TYPE_9__ {int* ai_buffer_bus_addr; int* ao_buffer_bus_addr; int ai_dma_desc_bus_addr; int ao_dma_desc_bus_addr; int local1_iobase; int local0_iobase; TYPE_2__* ao_dma_desc; TYPE_1__* ai_dma_desc; int /*<<< orphan*/  hw_dev; int /*<<< orphan*/ ** ao_buffer; int /*<<< orphan*/ ** ai_buffer; } ;
struct TYPE_8__ {void* next; void* transfer_size; void* local_start_addr; void* pci_start_addr; } ;
struct TYPE_7__ {void* next; void* transfer_size; void* local_start_addr; void* pci_start_addr; } ;

/* Variables and functions */
 int ADC_FIFO_REG ; 
 int AO_DMA_RING_COUNT ; 
 int DAC_FIFO_REG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DMA_BUFFER_SIZE ; 
 int ENOMEM ; 
 scalar_t__ LAYOUT_4020 ; 
 int PLX_DESC_IN_PCI_BIT ; 
 int PLX_INTR_TERM_COUNT ; 
 int PLX_XFER_LOCAL_TO_PCI ; 
 int FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 (struct comedi_device*) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 TYPE_3__* FUNC6 (struct comedi_device*) ; 

int FUNC7(struct comedi_device *dev)
{
	int i;

	/*  alocate pci dma buffers */
	for (i = 0; i < FUNC1(FUNC3(dev)); i++) {
		FUNC6(dev)->ai_buffer[i] =
		    FUNC5(FUNC6(dev)->hw_dev, DMA_BUFFER_SIZE,
					 &FUNC6(dev)->ai_buffer_bus_addr[i]);
		if (FUNC6(dev)->ai_buffer[i] == NULL) {
			return -ENOMEM;
		}
	}
	for (i = 0; i < AO_DMA_RING_COUNT; i++) {
		if (FUNC2(FUNC3(dev))) {
			FUNC6(dev)->ao_buffer[i] =
			    FUNC5(FUNC6(dev)->hw_dev,
						 DMA_BUFFER_SIZE,
						 &FUNC6(dev)->
						 ao_buffer_bus_addr[i]);
			if (FUNC6(dev)->ao_buffer[i] == NULL) {
				return -ENOMEM;
			}
		}
	}
	/*  allocate dma descriptors */
	FUNC6(dev)->ai_dma_desc =
	    FUNC5(FUNC6(dev)->hw_dev,
				 sizeof(struct plx_dma_desc) *
				 FUNC1(FUNC3(dev)),
				 &FUNC6(dev)->ai_dma_desc_bus_addr);
	if (FUNC6(dev)->ai_dma_desc == NULL) {
		return -ENOMEM;
	}
	FUNC0("ai dma descriptors start at bus addr 0x%x\n",
		    FUNC6(dev)->ai_dma_desc_bus_addr);
	if (FUNC2(FUNC3(dev))) {
		FUNC6(dev)->ao_dma_desc =
		    FUNC5(FUNC6(dev)->hw_dev,
					 sizeof(struct plx_dma_desc) *
					 AO_DMA_RING_COUNT,
					 &FUNC6(dev)->ao_dma_desc_bus_addr);
		if (FUNC6(dev)->ao_dma_desc == NULL) {
			return -ENOMEM;
		}
		FUNC0("ao dma descriptors start at bus addr 0x%x\n",
			    FUNC6(dev)->ao_dma_desc_bus_addr);
	}
	/*  initialize dma descriptors */
	for (i = 0; i < FUNC1(FUNC3(dev)); i++) {
		FUNC6(dev)->ai_dma_desc[i].pci_start_addr =
		    FUNC4(FUNC6(dev)->ai_buffer_bus_addr[i]);
		if (FUNC3(dev)->layout == LAYOUT_4020)
			FUNC6(dev)->ai_dma_desc[i].local_start_addr =
			    FUNC4(FUNC6(dev)->local1_iobase +
					ADC_FIFO_REG);
		else
			FUNC6(dev)->ai_dma_desc[i].local_start_addr =
			    FUNC4(FUNC6(dev)->local0_iobase +
					ADC_FIFO_REG);
		FUNC6(dev)->ai_dma_desc[i].transfer_size = FUNC4(0);
		FUNC6(dev)->ai_dma_desc[i].next =
		    FUNC4((FUNC6(dev)->ai_dma_desc_bus_addr + ((i +
								     1) %
								    FUNC1
								    (FUNC3
								     (dev))) *
				 sizeof(FUNC6(dev)->ai_dma_desc[0])) |
				PLX_DESC_IN_PCI_BIT | PLX_INTR_TERM_COUNT |
				PLX_XFER_LOCAL_TO_PCI);
	}
	if (FUNC2(FUNC3(dev))) {
		for (i = 0; i < AO_DMA_RING_COUNT; i++) {
			FUNC6(dev)->ao_dma_desc[i].pci_start_addr =
			    FUNC4(FUNC6(dev)->ao_buffer_bus_addr[i]);
			FUNC6(dev)->ao_dma_desc[i].local_start_addr =
			    FUNC4(FUNC6(dev)->local0_iobase +
					DAC_FIFO_REG);
			FUNC6(dev)->ao_dma_desc[i].transfer_size =
			    FUNC4(0);
			FUNC6(dev)->ao_dma_desc[i].next =
			    FUNC4((FUNC6(dev)->ao_dma_desc_bus_addr +
					 ((i + 1) % (AO_DMA_RING_COUNT)) *
					 sizeof(FUNC6(dev)->ao_dma_desc[0])) |
					PLX_DESC_IN_PCI_BIT |
					PLX_INTR_TERM_COUNT);
		}
	}
	return 0;
}