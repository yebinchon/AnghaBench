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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD64_GARTAPERTURECTL ; 
 int /*<<< orphan*/  AMD_NB_GART ; 
 int /*<<< orphan*/  GARTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * dma_ops ; 
 int /*<<< orphan*/  gart_dma_ops ; 
 scalar_t__ no_agp ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	struct pci_dev *dev;
	int i;

	if (no_agp && (dma_ops != &gart_dma_ops))
		return;

	if (!FUNC0(AMD_NB_GART))
		return;

	for (i = 0; i < FUNC1(); i++) {
		u32 ctl;

		dev = FUNC2(i)->misc;
		FUNC3(dev, AMD64_GARTAPERTURECTL, &ctl);

		ctl &= ~GARTEN;

		FUNC4(dev, AMD64_GARTAPERTURECTL, ctl);
	}
}