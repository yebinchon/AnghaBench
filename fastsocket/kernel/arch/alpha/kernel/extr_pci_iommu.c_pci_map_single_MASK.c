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
struct pci_dev {int /*<<< orphan*/  dma_mask; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PCI_DMA_NONE ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,void*,size_t,int) ; 

dma_addr_t
FUNC3(struct pci_dev *pdev, void *cpu_addr, size_t size, int dir)
{
	int dac_allowed; 

	if (dir == PCI_DMA_NONE)
		FUNC0();

	dac_allowed = pdev ? FUNC1(pdev, pdev->dma_mask) : 0; 
	return FUNC2(pdev, cpu_addr, size, dac_allowed);
}