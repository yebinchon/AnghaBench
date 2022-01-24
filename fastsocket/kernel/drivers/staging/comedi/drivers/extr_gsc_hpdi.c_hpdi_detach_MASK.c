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
struct comedi_device {scalar_t__ irq; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ hw_dev; scalar_t__ hpdi_phys_iobase; int /*<<< orphan*/  dma_desc_phys_addr; scalar_t__ dma_desc; int /*<<< orphan*/ * dio_buffer_phys_addr; scalar_t__* dio_buffer; scalar_t__ hpdi_iobase; scalar_t__ plx9080_iobase; } ;

/* Variables and functions */
 int DMA_BUFFER_SIZE ; 
 unsigned int NUM_DMA_BUFFERS ; 
 int NUM_DMA_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev)
{
	unsigned int i;

	FUNC6("comedi%d: gsc_hpdi: remove\n", dev->minor);

	if (dev->irq)
		FUNC2(dev->irq, dev);
	if (FUNC7(dev)) {
		if (FUNC7(dev)->hw_dev) {
			if (FUNC7(dev)->plx9080_iobase) {
				FUNC1(dev);
				FUNC3((void *)FUNC7(dev)->plx9080_iobase);
			}
			if (FUNC7(dev)->hpdi_iobase)
				FUNC3((void *)FUNC7(dev)->hpdi_iobase);
			/*  free pci dma buffers */
			for (i = 0; i < NUM_DMA_BUFFERS; i++) {
				if (FUNC7(dev)->dio_buffer[i])
					FUNC5(FUNC7(dev)->hw_dev,
							    DMA_BUFFER_SIZE,
							    FUNC7(dev)->
							    dio_buffer[i],
							    FUNC7
							    (dev)->dio_buffer_phys_addr
							    [i]);
			}
			/*  free dma descriptors */
			if (FUNC7(dev)->dma_desc)
				FUNC5(FUNC7(dev)->hw_dev,
						    sizeof(struct plx_dma_desc)
						    * NUM_DMA_DESCRIPTORS,
						    FUNC7(dev)->dma_desc,
						    FUNC7(dev)->
						    dma_desc_phys_addr);
			if (FUNC7(dev)->hpdi_phys_iobase) {
				FUNC0(FUNC7(dev)->hw_dev);
			}
			FUNC4(FUNC7(dev)->hw_dev);
		}
	}
	return 0;
}