#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct contec_private {int dummy; } ;
struct comedi_subdevice {int n_chan; int maxdata; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  subdev_flags; int /*<<< orphan*/  type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; scalar_t__ board_ptr; int /*<<< orphan*/  iobase; int /*<<< orphan*/  board_name; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {scalar_t__* options; } ;
struct TYPE_6__ {struct pci_dev* pci_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DI ; 
 int /*<<< orphan*/  COMEDI_SUBD_DO ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 scalar_t__ PCI_DEVICE_ID_PIO1616L ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_VENDOR_ID_CONTEC ; 
 int /*<<< orphan*/  SDF_READABLE ; 
 int /*<<< orphan*/  SDF_WRITABLE ; 
 scalar_t__ FUNC1 (struct comedi_device*,int) ; 
 scalar_t__ FUNC2 (struct comedi_device*,int) ; 
 scalar_t__ FUNC3 (struct pci_dev*,char*) ; 
 scalar_t__ contec_boards ; 
 int /*<<< orphan*/  contec_di_insn_bits ; 
 int /*<<< orphan*/  contec_do_insn_bits ; 
 TYPE_3__* devpriv ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  range_digital ; 
 TYPE_2__* thisboard ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct pci_dev *pcidev;
	struct comedi_subdevice *s;

	FUNC6("comedi%d: contec: ", dev->minor);

	dev->board_name = thisboard->name;

	if (FUNC1(dev, sizeof(struct contec_private)) < 0)
		return -ENOMEM;

	if (FUNC2(dev, 2) < 0)
		return -ENOMEM;

	for (pcidev = FUNC4(PCI_ANY_ID, PCI_ANY_ID, NULL);
	     pcidev != NULL;
	     pcidev = FUNC4(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {

		if (pcidev->vendor == PCI_VENDOR_ID_CONTEC &&
		    pcidev->device == PCI_DEVICE_ID_PIO1616L) {
			if (it->options[0] || it->options[1]) {
				/* Check bus and slot. */
				if (it->options[0] != pcidev->bus->number ||
				    it->options[1] != FUNC0(pcidev->devfn)) {
					continue;
				}
			}
			devpriv->pci_dev = pcidev;
			if (FUNC3(pcidev, "contec_pci_dio")) {
				FUNC6
				    ("error enabling PCI device and request regions!\n");
				return -EIO;
			}
			dev->iobase = FUNC5(pcidev, 0);
			FUNC6(" base addr %lx ", dev->iobase);

			dev->board_ptr = contec_boards + 0;

			s = dev->subdevices + 0;

			s->type = COMEDI_SUBD_DI;
			s->subdev_flags = SDF_READABLE;
			s->n_chan = 16;
			s->maxdata = 1;
			s->range_table = &range_digital;
			s->insn_bits = contec_di_insn_bits;

			s = dev->subdevices + 1;
			s->type = COMEDI_SUBD_DO;
			s->subdev_flags = SDF_WRITABLE;
			s->n_chan = 16;
			s->maxdata = 1;
			s->range_table = &range_digital;
			s->insn_bits = contec_do_insn_bits;

			FUNC6("attached\n");

			return 1;
		}
	}

	FUNC6("card not present!\n");

	return -EIO;
}