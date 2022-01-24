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
typedef  int /*<<< orphan*/  u8 ;
struct sbridge_dev {struct pci_dev** pdev; } ;
struct pci_id_table {struct pci_id_descr* descr; } ;
struct pci_id_descr {scalar_t__ dev; scalar_t__ func; int /*<<< orphan*/  dev_id; scalar_t__ optional; } ;
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 struct sbridge_dev* FUNC2 (int /*<<< orphan*/ ,struct pci_id_table const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sbridge_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct pci_dev **prev,
				 u8 *num_mc,
				 const struct pci_id_table *table,
				 const unsigned devno)
{
	struct sbridge_dev *sbridge_dev;
	const struct pci_id_descr *dev_descr = &table->descr[devno];

	struct pci_dev *pdev = NULL;
	u8 bus = 0;

	FUNC9(KERN_INFO,
		"Seeking for: dev %02x.%d PCI ID %04x:%04x\n",
		dev_descr->dev, dev_descr->func,
		PCI_VENDOR_ID_INTEL, dev_descr->dev_id);

	pdev = FUNC8(PCI_VENDOR_ID_INTEL,
			      dev_descr->dev_id, *prev);

	if (!pdev) {
		if (*prev) {
			*prev = pdev;
			return 0;
		}

		if (dev_descr->optional)
			return 0;

		if (devno == 0)
			return -ENODEV;

		FUNC9(KERN_INFO,
			"Device not found: dev %02x.%d PCI ID %04x:%04x\n",
			dev_descr->dev, dev_descr->func,
			PCI_VENDOR_ID_INTEL, dev_descr->dev_id);

		/* End of list, leave */
		return -ENODEV;
	}
	bus = pdev->bus->number;

	sbridge_dev = FUNC4(bus);
	if (!sbridge_dev) {
		sbridge_dev = FUNC2(bus, table);
		if (!sbridge_dev) {
			FUNC6(pdev);
			return -ENOMEM;
		}
		(*num_mc)++;
	}

	if (sbridge_dev->pdev[devno]) {
		FUNC9(KERN_ERR,
			"Duplicated device for "
			"dev %02x:%d.%d PCI ID %04x:%04x\n",
			bus, dev_descr->dev, dev_descr->func,
			PCI_VENDOR_ID_INTEL, dev_descr->dev_id);
		FUNC6(pdev);
		return -ENODEV;
	}

	sbridge_dev->pdev[devno] = pdev;

	/* Sanity check */
	if (FUNC10(FUNC1(pdev->devfn) != dev_descr->dev ||
			FUNC0(pdev->devfn) != dev_descr->func)) {
		FUNC9(KERN_ERR,
			"Device PCI ID %04x:%04x "
			"has dev %02x:%d.%d instead of dev %02x:%02x.%d\n",
			PCI_VENDOR_ID_INTEL, dev_descr->dev_id,
			bus, FUNC1(pdev->devfn), FUNC0(pdev->devfn),
			bus, dev_descr->dev, dev_descr->func);
		return -ENODEV;
	}

	/* Be sure that the device is enabled */
	if (FUNC10(FUNC7(pdev) < 0)) {
		FUNC9(KERN_ERR,
			"Couldn't enable "
			"dev %02x:%d.%d PCI ID %04x:%04x\n",
			bus, dev_descr->dev, dev_descr->func,
			PCI_VENDOR_ID_INTEL, dev_descr->dev_id);
		return -ENODEV;
	}

	FUNC3("Detected dev %02x:%d.%d PCI ID %04x:%04x\n",
		bus, dev_descr->dev,
		dev_descr->func,
		PCI_VENDOR_ID_INTEL, dev_descr->dev_id);

	/*
	 * As stated on drivers/pci/search.c, the reference count for
	 * @from is always decremented if it is not %NULL. So, as we need
	 * to get all devices up to null, we need to do a get for the device
	 */
	FUNC5(pdev);

	*prev = pdev;

	return 0;
}