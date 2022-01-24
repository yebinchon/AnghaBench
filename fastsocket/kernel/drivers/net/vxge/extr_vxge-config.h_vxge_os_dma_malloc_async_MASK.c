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
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned long,struct pci_dev*,struct pci_dev*) ; 

__attribute__((used)) static inline void FUNC3(struct pci_dev *pdev, void *devh,
					unsigned long size)
{
	gfp_t flags;
	void *vaddr;

	if (FUNC0())
		flags = GFP_ATOMIC | GFP_DMA;
	else
		flags = GFP_KERNEL | GFP_DMA;

	vaddr = FUNC1((size), flags);

	FUNC2(devh, vaddr, size, pdev, pdev);
}