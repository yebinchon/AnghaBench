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
typedef  int u8 ;
typedef  unsigned int u32 ;
typedef  int u16 ;
struct qib_devdata {TYPE_3__* pcidev; } ;
struct pci_dev {int vendor; int device; TYPE_2__* bus; } ;
struct TYPE_6__ {TYPE_1__* bus; } ;
struct TYPE_5__ {scalar_t__ parent; } ;
struct TYPE_4__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_REVISION_ID ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,unsigned int*) ; 
 int FUNC3 (struct pci_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  qib_pcie_coalesce ; 

__attribute__((used)) static int FUNC5(struct qib_devdata *dd)
{
	int r;
	struct pci_dev *parent;
	u16 devid;
	u32 mask, bits, val;

	if (!qib_pcie_coalesce)
		return 0;

	/* Find out supported and configured values for parent (root) */
	parent = dd->pcidev->bus->self;
	if (parent->bus->parent) {
		FUNC4(dd->pcidev, "Parent not root\n");
		return 1;
	}
	if (!FUNC0(parent))
		return 1;
	if (parent->vendor != 0x8086)
		return 1;

	/*
	 *  - bit 12: Max_rdcmp_Imt_EN: need to set to 1
	 *  - bit 11: COALESCE_FORCE: need to set to 0
	 *  - bit 10: COALESCE_EN: need to set to 1
	 *  (but limitations on some on some chipsets)
	 *
	 *  On the Intel 5000, 5100, and 7300 chipsets, there is
	 *  also: - bit 25:24: COALESCE_MODE, need to set to 0
	 */
	devid = parent->device;
	if (devid >= 0x25e2 && devid <= 0x25fa) {
		u8 rev;

		/* 5000 P/V/X/Z */
		FUNC1(parent, PCI_REVISION_ID, &rev);
		if (rev <= 0xb2)
			bits = 1U << 10;
		else
			bits = 7U << 10;
		mask = (3U << 24) | (7U << 10);
	} else if (devid >= 0x65e2 && devid <= 0x65fa) {
		/* 5100 */
		bits = 1U << 10;
		mask = (3U << 24) | (7U << 10);
	} else if (devid >= 0x4021 && devid <= 0x402e) {
		/* 5400 */
		bits = 7U << 10;
		mask = 7U << 10;
	} else if (devid >= 0x3604 && devid <= 0x360a) {
		/* 7300 */
		bits = 7U << 10;
		mask = (3U << 24) | (7U << 10);
	} else {
		/* not one of the chipsets that we know about */
		return 1;
	}
	FUNC2(parent, 0x48, &val);
	val &= ~mask;
	val |= bits;
	r = FUNC3(parent, 0x48, val);
	return 0;
}