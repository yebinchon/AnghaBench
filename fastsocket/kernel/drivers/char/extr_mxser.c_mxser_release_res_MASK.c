#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct mxser_board {int /*<<< orphan*/  vector; TYPE_2__* info; TYPE_1__* ports; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int nports; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mxser_board*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mxser_board *brd, struct pci_dev *pdev,
		unsigned int irq)
{
	if (irq)
		FUNC0(brd->irq, brd);
	if (pdev != NULL) {	/* PCI */
#ifdef CONFIG_PCI
		pci_release_region(pdev, 2);
		pci_release_region(pdev, 3);
#endif
	} else {
		FUNC2(brd->ports[0].ioaddr, 8 * brd->info->nports);
		FUNC2(brd->vector, 1);
	}
}