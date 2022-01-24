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
typedef  int u32 ;
typedef  int u16 ;
struct qib_msix_entry {int dummy; } ;
struct qib_devdata {int lbus_width; int lbus_speed; int /*<<< orphan*/  lbus_info; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_MSI ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSIX ; 
 int /*<<< orphan*/  PCI_EXP_LNKSTA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_devdata*,int,int*,struct qib_msix_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int,int) ; 

int FUNC10(struct qib_devdata *dd, u32 minw, u32 *nent,
		    struct qib_msix_entry *entry)
{
	u16 linkstat, speed;
	int pos = 0, ret = 1;

	if (!FUNC1(dd->pcidev)) {
		FUNC3(dd, "Can't find PCI Express capability!\n");
		/* set up something... */
		dd->lbus_width = 1;
		dd->lbus_speed = 2500; /* Gen1, 2.5GHz */
		goto bail;
	}

	pos = FUNC0(dd->pcidev, PCI_CAP_ID_MSIX);
	if (nent && *nent && pos) {
		FUNC6(dd, pos, nent, entry);
		ret = 0; /* did it, either MSIx or INTx */
	} else {
		pos = FUNC0(dd->pcidev, PCI_CAP_ID_MSI);
		if (pos)
			ret = FUNC5(dd, pos);
		else
			FUNC3(dd, "No PCI MSI or MSIx capability!\n");
	}
	if (!pos)
		FUNC4(dd->pcidev);

	FUNC2(dd->pcidev, PCI_EXP_LNKSTA, &linkstat);
	/*
	 * speed is bits 0-3, linkwidth is bits 4-8
	 * no defines for them in headers
	 */
	speed = linkstat & 0xf;
	linkstat >>= 4;
	linkstat &= 0x1f;
	dd->lbus_width = linkstat;

	switch (speed) {
	case 1:
		dd->lbus_speed = 2500; /* Gen1, 2.5GHz */
		break;
	case 2:
		dd->lbus_speed = 5000; /* Gen1, 5GHz */
		break;
	default: /* not defined, assume gen1 */
		dd->lbus_speed = 2500;
		break;
	}

	/*
	 * Check against expected pcie width and complain if "wrong"
	 * on first initialization, not afterwards (i.e., reset).
	 */
	if (minw && linkstat < minw)
		FUNC3(dd,
			    "PCIe width %u (x%u HCA), performance reduced\n",
			    linkstat, minw);

	FUNC7(dd);

	FUNC8(dd);

bail:
	/* fill in string, even on errors */
	FUNC9(dd->lbus_info, sizeof(dd->lbus_info),
		 "PCIe,%uMHz,x%u\n", dd->lbus_speed, dd->lbus_width);
	return ret;
}