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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ bc_ver; } ;
struct bnx2x {TYPE_1__ common; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_INITIATE_FLR ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCI_EXP_DEVSTA ; 
 int PCI_EXP_DEVSTA_TRPND ; 
 scalar_t__ REQ_BC_VER_4_INITIATE_FLR ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct bnx2x *bp)
{
	int i;
	u16 status;
	struct pci_dev *dev = bp->pdev;

	if (FUNC2(bp)) {
		FUNC0("FLR not supported in E1/E1H\n");
		return -EINVAL;
	}

	/* only bootcode REQ_BC_VER_4_INITIATE_FLR and onwards support flr */
	if (bp->common.bc_ver < REQ_BC_VER_4_INITIATE_FLR) {
		FUNC1("FLR not supported by BC_VER: 0x%x\n",
			  bp->common.bc_ver);
		return -EINVAL;
	}

	/* Wait for Transaction Pending bit clean */
	for (i = 0; i < 4; i++) {
		if (i)
			FUNC5((1 << (i - 1)) * 100);

		FUNC6(dev, PCI_EXP_DEVSTA, &status);
		if (!(status & PCI_EXP_DEVSTA_TRPND))
			goto clear;
	}

	FUNC4(&dev->dev,
		"transaction is not cleared; proceeding with reset anyway\n");

clear:

	FUNC0("Initiating FLR\n");
	FUNC3(bp, DRV_MSG_CODE_INITIATE_FLR, 0);

	return 0;
}