#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  last_rx; int /*<<< orphan*/  rx_ring; struct pci_dev* pdev; } ;
typedef  TYPE_1__ vlsi_irda_dev_t ;
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct net_device {unsigned int base_addr; } ;

/* Variables and functions */
 int IRMISC_UARTEN ; 
 int IRMISC_UARTTST ; 
 int MSTRPAGE_VALUE ; 
 int /*<<< orphan*/  VLSI_PCI_IRMISC ; 
 int /*<<< orphan*/  VLSI_PCI_MSTRPAGE ; 
 scalar_t__ VLSI_PIO_PROMPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct net_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC9(vlsi_irda_dev_t *idev)
{
	struct pci_dev *pdev = idev->pdev;
	struct net_device *ndev = FUNC3(pdev);
	unsigned iobase = ndev->base_addr;
	u8 byte;

	/* we don't use the legacy UART, disable its address decoding */

	FUNC4(pdev, VLSI_PCI_IRMISC, &byte);
	byte &= ~(IRMISC_UARTEN | IRMISC_UARTTST);
	FUNC6(pdev, VLSI_PCI_IRMISC, byte);

	/* enable PCI busmaster access to our 16MB page */

	FUNC6(pdev, VLSI_PCI_MSTRPAGE, MSTRPAGE_VALUE);
	FUNC5(pdev);

	if (FUNC8(pdev) < 0) {
		FUNC2(pdev);
		return -1;
	}

	FUNC7(idev->rx_ring);

	FUNC0(&idev->last_rx);	/* first mtt may start from now on */

	FUNC1(0, iobase+VLSI_PIO_PROMPT);	/* kick hw state machine */

	return 0;
}