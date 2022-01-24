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
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct comedi_device {scalar_t__ board_ptr; } ;
struct TYPE_4__ {struct pci_dev* pci_dev; } ;
struct TYPE_3__ {int number; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* devpriv ; 
 scalar_t__ dt3k_boardtypes ; 
 struct pci_dev* FUNC1 (struct pci_dev*,int*) ; 
 int FUNC2 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, int bus, int slot)
{
	int board;
	int ret;
	struct pci_dev *pcidev;

	pcidev = NULL;
	while ((pcidev = FUNC1(pcidev, &board)) != NULL) {
		if ((bus == 0 && slot == 0) ||
		    (pcidev->bus->number == bus &&
		     FUNC0(pcidev->devfn) == slot)) {
			break;
		}
	}
	devpriv->pci_dev = pcidev;

	if (board >= 0)
		dev->board_ptr = dt3k_boardtypes + board;

	if (!devpriv->pci_dev)
		return 0;

	ret = FUNC2(dev);
	if (ret < 0)
		return ret;

	return 1;
}