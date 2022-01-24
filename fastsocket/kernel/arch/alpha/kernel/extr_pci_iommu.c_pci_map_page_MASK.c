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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PCI_DMA_NONE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,size_t,int) ; 

dma_addr_t
FUNC4(struct pci_dev *pdev, struct page *page, unsigned long offset,
	     size_t size, int dir)
{
	int dac_allowed;

	if (dir == PCI_DMA_NONE)
		FUNC0();

	dac_allowed = pdev ? FUNC2(pdev, pdev->dma_mask) : 0; 
	return FUNC3(pdev, (char *)FUNC1(page) + offset, 
				size, dac_allowed);
}