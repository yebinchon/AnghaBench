#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pcidio_private {int dummy; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct comedi_device {scalar_t__ subdevices; int /*<<< orphan*/  board_name; TYPE_3__* board_ptr; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {scalar_t__* options; } ;
struct TYPE_9__ {scalar_t__ dio_reg_base; struct pci_dev* pci_dev; } ;
struct TYPE_8__ {scalar_t__ dev_id; int /*<<< orphan*/  dioregs_badrindex; } ;
struct TYPE_7__ {int n_8255; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ number; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_VENDOR_ID_CB ; 
 scalar_t__ FUNC2 (struct comedi_device*,int) ; 
 scalar_t__ FUNC3 (struct comedi_device*,int) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 TYPE_4__* devpriv ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 TYPE_3__* pcidio_boards ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* thisboard ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct pci_dev *pcidev = NULL;
	int index;
	int i;

	FUNC7("comedi%d: cb_pcidio: \n", dev->minor);

/*
 * Allocate the private structure area.  alloc_private() is a
 * convenient macro defined in comedidev.h.
 */
	if (FUNC2(dev, sizeof(struct pcidio_private)) < 0)
		return -ENOMEM;
/*
 * If you can probe the device to determine what device in a series
 * it is, this is the place to do it.  Otherwise, dev->board_ptr
 * should already be initialized.
 */
/*
 * Probe the device to determine what device in the series it is.
 */

	for (pcidev = FUNC5(PCI_ANY_ID, PCI_ANY_ID, NULL);
	     pcidev != NULL;
	     pcidev = FUNC5(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {
		/*  is it not a computer boards card? */
		if (pcidev->vendor != PCI_VENDOR_ID_CB)
			continue;
		/*  loop through cards supported by this driver */
		for (index = 0; index < FUNC0(pcidio_boards); index++) {
			if (pcidio_boards[index].dev_id != pcidev->device)
				continue;

			/*  was a particular bus/slot requested? */
			if (it->options[0] || it->options[1]) {
				/*  are we on the wrong bus/slot? */
				if (pcidev->bus->number != it->options[0] ||
				    FUNC1(pcidev->devfn) != it->options[1]) {
					continue;
				}
			}
			dev->board_ptr = pcidio_boards + index;
			goto found;
		}
	}

	FUNC7("No supported ComputerBoards/MeasurementComputing card found on "
	       "requested position\n");
	return -EIO;

found:

/*
 * Initialize dev->board_name.  Note that we can use the "thisboard"
 * macro now, since we just initialized it in the last line.
 */
	dev->board_name = thisboard->name;

	devpriv->pci_dev = pcidev;
	FUNC7("Found %s on bus %i, slot %i\n", thisboard->name,
	       devpriv->pci_dev->bus->number,
	       FUNC1(devpriv->pci_dev->devfn));
	if (FUNC4(pcidev, thisboard->name)) {
		FUNC7
		    ("cb_pcidio: failed to enable PCI device and request regions\n");
		return -EIO;
	}
	devpriv->dio_reg_base
	    =
	    FUNC6(devpriv->pci_dev,
			       pcidio_boards[index].dioregs_badrindex);

/*
 * Allocate the subdevice structures.  alloc_subdevice() is a
 * convenient macro defined in comedidev.h.
 */
	if (FUNC3(dev, thisboard->n_8255) < 0)
		return -ENOMEM;

	for (i = 0; i < thisboard->n_8255; i++) {
		FUNC8(dev, dev->subdevices + i,
				 NULL, devpriv->dio_reg_base + i * 4);
		FUNC7(" subdev %d: base = 0x%lx\n", i,
		       devpriv->dio_reg_base + i * 4);
	}

	FUNC7("attached\n");
	return 1;
}