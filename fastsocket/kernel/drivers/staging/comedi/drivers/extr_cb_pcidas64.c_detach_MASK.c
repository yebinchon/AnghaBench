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
struct plx_dma_desc {int dummy; } ;
struct comedi_device {scalar_t__ subdevices; scalar_t__ irq; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ hw_dev; scalar_t__ main_phys_iobase; int /*<<< orphan*/  ao_dma_desc_bus_addr; scalar_t__ ao_dma_desc; int /*<<< orphan*/  ai_dma_desc_bus_addr; scalar_t__ ai_dma_desc; int /*<<< orphan*/ * ao_buffer_bus_addr; scalar_t__* ao_buffer; int /*<<< orphan*/ * ai_buffer_bus_addr; scalar_t__* ai_buffer; scalar_t__ dio_counter_iobase; scalar_t__ main_iobase; scalar_t__ plx9080_iobase; } ;

/* Variables and functions */
 unsigned int AO_DMA_RING_COUNT ; 
 int DMA_BUFFER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct comedi_device *dev)
{
	unsigned int i;

	FUNC8("comedi%d: cb_pcidas: remove\n", dev->minor);

	if (dev->irq)
		FUNC4(dev->irq, dev);
	if (FUNC9(dev)) {
		if (FUNC9(dev)->hw_dev) {
			if (FUNC9(dev)->plx9080_iobase) {
				FUNC3(dev);
				FUNC5((void *)FUNC9(dev)->plx9080_iobase);
			}
			if (FUNC9(dev)->main_iobase)
				FUNC5((void *)FUNC9(dev)->main_iobase);
			if (FUNC9(dev)->dio_counter_iobase)
				FUNC5((void *)FUNC9(dev)->dio_counter_iobase);
			/*  free pci dma buffers */
			for (i = 0; i < FUNC0(FUNC1(dev)); i++) {
				if (FUNC9(dev)->ai_buffer[i])
					FUNC7(FUNC9(dev)->hw_dev,
							    DMA_BUFFER_SIZE,
							    FUNC9(dev)->
							    ai_buffer[i],
							    FUNC9
							    (dev)->ai_buffer_bus_addr
							    [i]);
			}
			for (i = 0; i < AO_DMA_RING_COUNT; i++) {
				if (FUNC9(dev)->ao_buffer[i])
					FUNC7(FUNC9(dev)->hw_dev,
							    DMA_BUFFER_SIZE,
							    FUNC9(dev)->
							    ao_buffer[i],
							    FUNC9
							    (dev)->ao_buffer_bus_addr
							    [i]);
			}
			/*  free dma descriptors */
			if (FUNC9(dev)->ai_dma_desc)
				FUNC7(FUNC9(dev)->hw_dev,
						    sizeof(struct plx_dma_desc)
						    *
						    FUNC0(FUNC1
								      (dev)),
						    FUNC9(dev)->ai_dma_desc,
						    FUNC9(dev)->
						    ai_dma_desc_bus_addr);
			if (FUNC9(dev)->ao_dma_desc)
				FUNC7(FUNC9(dev)->hw_dev,
						    sizeof(struct plx_dma_desc)
						    * AO_DMA_RING_COUNT,
						    FUNC9(dev)->ao_dma_desc,
						    FUNC9(dev)->
						    ao_dma_desc_bus_addr);
			if (FUNC9(dev)->main_phys_iobase) {
				FUNC2(FUNC9(dev)->hw_dev);
			}
			FUNC6(FUNC9(dev)->hw_dev);
		}
	}
	if (dev->subdevices)
		FUNC10(dev, dev->subdevices + 4);

	return 0;
}