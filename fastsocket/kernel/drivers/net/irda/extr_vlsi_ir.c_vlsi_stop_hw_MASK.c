#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; struct pci_dev* pdev; } ;
typedef  TYPE_1__ vlsi_irda_dev_t ;
struct pci_dev {int dummy; } ;
struct net_device {unsigned int base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRINTR_INT_MASK ; 
 unsigned int VLSI_PIO_IRCFG ; 
 unsigned int VLSI_PIO_IRENABLE ; 
 unsigned int VLSI_PIO_IRINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct net_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(vlsi_irda_dev_t *idev)
{
	struct pci_dev *pdev = idev->pdev;
	struct net_device *ndev = FUNC3(pdev);
	unsigned iobase = ndev->base_addr;
	unsigned long flags;

	FUNC4(&idev->lock,flags);
	FUNC1(0, iobase+VLSI_PIO_IRENABLE);
	FUNC1(0, iobase+VLSI_PIO_IRCFG);			/* disable everything */

	/* disable and w/c irqs */
	FUNC0(0, iobase+VLSI_PIO_IRINTR);
	FUNC10();
	FUNC0(IRINTR_INT_MASK, iobase+VLSI_PIO_IRINTR);
	FUNC5(&idev->lock,flags);

	FUNC9(idev);
	FUNC8(idev);

	FUNC6(iobase);
	FUNC7(pdev);

	FUNC2(pdev);

	return 0;
}