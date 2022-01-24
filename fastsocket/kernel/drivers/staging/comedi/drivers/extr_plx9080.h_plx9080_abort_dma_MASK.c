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
typedef  int uint8_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int PLX_DMA0_CS_REG ; 
 int PLX_DMA1_CS_REG ; 
 int /*<<< orphan*/  PLX_DMA_ABORT_BIT ; 
 int PLX_DMA_DONE_BIT ; 
 int PLX_DMA_EN_BIT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static inline int FUNC4(void *iobase, unsigned int channel)
{
	void *dma_cs_addr;
	uint8_t dma_status;
	const int timeout = 10000;
	unsigned int i;

	if (channel)
		dma_cs_addr = iobase + PLX_DMA1_CS_REG;
	else
		dma_cs_addr = iobase + PLX_DMA0_CS_REG;

	/*  abort dma transfer if necessary */
	dma_status = FUNC1(dma_cs_addr);
	if ((dma_status & PLX_DMA_EN_BIT) == 0)
		return 0;

	/*  wait to make sure done bit is zero */
	for (i = 0; (dma_status & PLX_DMA_DONE_BIT) && i < timeout; i++) {
		FUNC2(1);
		dma_status = FUNC1(dma_cs_addr);
	}
	if (i == timeout) {
		FUNC0
		    ("plx9080: cancel() timed out waiting for dma %i done clear\n",
		     channel);
		return -ETIMEDOUT;
	}
	/*  disable and abort channel */
	FUNC3(PLX_DMA_ABORT_BIT, dma_cs_addr);
	/*  wait for dma done bit */
	dma_status = FUNC1(dma_cs_addr);
	for (i = 0; (dma_status & PLX_DMA_DONE_BIT) == 0 && i < timeout; i++) {
		FUNC2(1);
		dma_status = FUNC1(dma_cs_addr);
	}
	if (i == timeout) {
		FUNC0
		    ("plx9080: cancel() timed out waiting for dma %i done set\n",
		     channel);
		return -ETIMEDOUT;
	}

	return 0;
}