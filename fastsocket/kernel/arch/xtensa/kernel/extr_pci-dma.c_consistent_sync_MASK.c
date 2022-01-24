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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  PCI_DMA_BIDIRECTIONAL 131 
#define  PCI_DMA_FROMDEVICE 130 
#define  PCI_DMA_NONE 129 
#define  PCI_DMA_TODEVICE 128 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 

void FUNC3(void *vaddr, size_t size, int direction)
{
	switch (direction) {
	case PCI_DMA_NONE:
		FUNC0();
	case PCI_DMA_FROMDEVICE:        /* invalidate only */
		FUNC2((unsigned long)vaddr,
				          (unsigned long)size);
		break;

	case PCI_DMA_TODEVICE:          /* writeback only */
	case PCI_DMA_BIDIRECTIONAL:     /* writeback and invalidate */
		FUNC1((unsigned long)vaddr,
				    		(unsigned long)size);
		break;
	}
}