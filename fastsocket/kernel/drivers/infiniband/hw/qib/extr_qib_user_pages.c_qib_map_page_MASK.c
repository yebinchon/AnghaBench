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
struct pci_dev {int dummy; } ;
struct page {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_dev*,struct page*,unsigned long,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,size_t,int) ; 

dma_addr_t FUNC2(struct pci_dev *hwdev, struct page *page,
			unsigned long offset, size_t size, int direction)
{
	dma_addr_t phys;

	phys = FUNC0(hwdev, page, offset, size, direction);

	if (phys == 0) {
		FUNC1(hwdev, phys, size, direction);
		phys = FUNC0(hwdev, page, offset, size, direction);
		/*
		 * FIXME: If we get 0 again, we should keep this page,
		 * map another, then free the 0 page.
		 */
	}

	return phys;
}