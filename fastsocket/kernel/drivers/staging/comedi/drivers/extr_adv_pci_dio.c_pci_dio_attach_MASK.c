#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pci_dio_private {int dummy; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct comedi_subdevice {int /*<<< orphan*/  type; } ;
struct comedi_device {unsigned long iobase; struct comedi_subdevice* subdevices; int /*<<< orphan*/  board_name; TYPE_8__* board_ptr; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {scalar_t__* options; } ;
struct TYPE_16__ {scalar_t__ vendor_id; scalar_t__ device_id; } ;
struct TYPE_15__ {int valid; } ;
struct TYPE_14__ {int /*<<< orphan*/  driver_name; } ;
struct TYPE_13__ {scalar_t__ chans; } ;
struct TYPE_12__ {scalar_t__ chans; } ;
struct TYPE_11__ {scalar_t__ cardtype; TYPE_5__ boardid; TYPE_2__* sdio; TYPE_4__* sdo; TYPE_5__* sdi; int /*<<< orphan*/  name; int /*<<< orphan*/  main_pci_region; } ;
struct TYPE_10__ {int regs; scalar_t__ addr; } ;
struct TYPE_9__ {scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DI ; 
 int FUNC0 (struct comedi_device*,struct comedi_devconfig*,struct pci_dev*) ; 
 int EIO ; 
 int ENOMEM ; 
 int MAX_DIO_SUBDEVG ; 
 int MAX_DI_SUBDEVS ; 
 int MAX_DO_SUBDEVS ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int SIZE_8255 ; 
 scalar_t__ TYPE_PCI1760 ; 
 int FUNC3 (struct comedi_device*,int) ; 
 int FUNC4 (struct comedi_device*,int) ; 
 TYPE_8__* boardtypes ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 TYPE_7__* devpriv ; 
 TYPE_6__ driver_pci_dio ; 
 int n_boardtypes ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,struct comedi_devconfig*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,struct comedi_subdevice*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,struct comedi_subdevice*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*) ; 
 struct pci_dev* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 unsigned long FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_3__* this_board ; 

__attribute__((used)) static int FUNC14(struct comedi_device *dev,
			  struct comedi_devconfig *it)
{
	struct comedi_subdevice *s;
	int ret, subdev, n_subdevices, i, j;
	unsigned long iobase;
	struct pci_dev *pcidev;

	FUNC12("comedi%d: adv_pci_dio: ", dev->minor);

	ret = FUNC3(dev, sizeof(struct pci_dio_private));
	if (ret < 0) {
		FUNC12(", Error: Cann't allocate private memory!\n");
		return -ENOMEM;
	}

	for (pcidev = FUNC10(PCI_ANY_ID, PCI_ANY_ID, NULL);
	     pcidev != NULL;
	     pcidev = FUNC10(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {
		/*  loop through cards supported by this driver */
		for (i = 0; i < n_boardtypes; ++i) {
			if (boardtypes[i].vendor_id != pcidev->vendor)
				continue;
			if (boardtypes[i].device_id != pcidev->device)
				continue;
			/*  was a particular bus/slot requested? */
			if (it->options[0] || it->options[1]) {
				/*  are we on the wrong bus/slot? */
				if (pcidev->bus->number != it->options[0] ||
				    FUNC2(pcidev->devfn) != it->options[1]) {
					continue;
				}
			}
			ret = FUNC0(dev, it, pcidev);
			if (ret != 1)
				continue;
			dev->board_ptr = boardtypes + i;
			break;
		}
		if (dev->board_ptr)
			break;
	}

	if (!dev->board_ptr) {
		FUNC12(", Error: Requested type of the card was not found!\n");
		return -EIO;
	}

	if (FUNC5(pcidev, driver_pci_dio.driver_name)) {
		FUNC12
		    (", Error: Can't enable PCI device and request regions!\n");
		return -EIO;
	}
	iobase = FUNC11(pcidev, this_board->main_pci_region);
	FUNC12(", b:s:f=%d:%d:%d, io=0x%4lx",
	       pcidev->bus->number, FUNC2(pcidev->devfn),
	       FUNC1(pcidev->devfn), iobase);

	dev->iobase = iobase;
	dev->board_name = this_board->name;

	if (this_board->cardtype == TYPE_PCI1760) {
		n_subdevices = 4;	/*  8 IDI, 8 IDO, 2 PWM, 8 CNT */
	} else {
		n_subdevices = 0;
		for (i = 0; i < MAX_DI_SUBDEVS; i++)
			if (this_board->sdi[i].chans)
				n_subdevices++;
		for (i = 0; i < MAX_DO_SUBDEVS; i++)
			if (this_board->sdo[i].chans)
				n_subdevices++;
		for (i = 0; i < MAX_DIO_SUBDEVG; i++)
			n_subdevices += this_board->sdio[i].regs;
		if (this_board->boardid.chans)
			n_subdevices++;
	}

	ret = FUNC4(dev, n_subdevices);
	if (ret < 0) {
		FUNC12(", Error: Cann't allocate subdevice memory!\n");
		return ret;
	}

	FUNC12(".\n");

	subdev = 0;

	for (i = 0; i < MAX_DI_SUBDEVS; i++)
		if (this_board->sdi[i].chans) {
			s = dev->subdevices + subdev;
			FUNC7(dev, s, &this_board->sdi[i], subdev);
			subdev++;
		}

	for (i = 0; i < MAX_DO_SUBDEVS; i++)
		if (this_board->sdo[i].chans) {
			s = dev->subdevices + subdev;
			FUNC8(dev, s, &this_board->sdo[i], subdev);
			subdev++;
		}

	for (i = 0; i < MAX_DIO_SUBDEVG; i++)
		for (j = 0; j < this_board->sdio[i].regs; j++) {
			s = dev->subdevices + subdev;
			FUNC13(dev, s, NULL,
					 dev->iobase +
					 this_board->sdio[i].addr +
					 SIZE_8255 * j);
			subdev++;
		}

	if (this_board->boardid.chans) {
		s = dev->subdevices + subdev;
		s->type = COMEDI_SUBD_DI;
		FUNC7(dev, s, &this_board->boardid, subdev);
		subdev++;
	}

	if (this_board->cardtype == TYPE_PCI1760)
		FUNC6(dev, it);

	devpriv->valid = 1;

	FUNC9(dev);

	return 0;
}