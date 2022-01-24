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
struct sbridge_pvt {struct pci_dev** pci_tad; struct pci_dev* pci_ta; struct pci_dev* pci_ras; struct pci_dev* pci_ha0; struct pci_dev* pci_sad1; struct pci_dev* pci_sad0; struct pci_dev* pci_ddrio; struct pci_dev* pci_br; } ;
struct sbridge_dev {int n_devs; int /*<<< orphan*/  bus; struct pci_dev** pdev; } ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int NUM_CHANNELS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct mem_ctl_info *mci,
			 struct sbridge_dev *sbridge_dev)
{
	struct sbridge_pvt *pvt = mci->pvt_info;
	struct pci_dev *pdev;
	int i, func, slot;

	for (i = 0; i < sbridge_dev->n_devs; i++) {
		pdev = sbridge_dev->pdev[i];
		if (!pdev)
			continue;
		slot = FUNC1(pdev->devfn);
		func = FUNC0(pdev->devfn);
		switch (slot) {
		case 12:
			switch (func) {
			case 6:
				pvt->pci_sad0 = pdev;
				break;
			case 7:
				pvt->pci_sad1 = pdev;
				break;
			default:
				goto error;
			}
			break;
		case 13:
			switch (func) {
			case 6:
				pvt->pci_br = pdev;
				break;
			default:
				goto error;
			}
			break;
		case 14:
			switch (func) {
			case 0:
				pvt->pci_ha0 = pdev;
				break;
			default:
				goto error;
			}
			break;
		case 15:
			switch (func) {
			case 0:
				pvt->pci_ta = pdev;
				break;
			case 1:
				pvt->pci_ras = pdev;
				break;
			case 2:
			case 3:
			case 4:
			case 5:
				pvt->pci_tad[func - 2] = pdev;
				break;
			default:
				goto error;
			}
			break;
		case 17:
			switch (func) {
			case 0:
				pvt->pci_ddrio = pdev;
				break;
			default:
				goto error;
			}
			break;
		default:
			goto error;
		}

		FUNC2("Associated PCI %02x.%02d.%d with dev = %p\n",
			sbridge_dev->bus,
			FUNC1(pdev->devfn), FUNC0(pdev->devfn),
			pdev);
	}

	/* Check if everything were registered */
	if (!pvt->pci_sad0 || !pvt->pci_sad1 || !pvt->pci_ha0 ||
	    !pvt-> pci_tad || !pvt->pci_ras  || !pvt->pci_ta)
		goto enodev;

	for (i = 0; i < NUM_CHANNELS; i++) {
		if (!pvt->pci_tad[i])
			goto enodev;
	}
	return 0;

enodev:
	FUNC3(KERN_ERR, "Some needed devices are missing\n");
	return -ENODEV;

error:
	FUNC3(KERN_ERR, "Device %d, function %d "
		      "is out of the expected range\n",
		      slot, func);
	return -EINVAL;
}