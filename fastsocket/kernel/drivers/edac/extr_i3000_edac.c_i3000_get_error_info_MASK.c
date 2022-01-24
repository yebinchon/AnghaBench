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
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int /*<<< orphan*/  dev; } ;
struct i3000_error_info {int errsts; int errsts2; int /*<<< orphan*/  derrsyn; int /*<<< orphan*/  deap; int /*<<< orphan*/  edeap; } ;

/* Variables and functions */
 int /*<<< orphan*/  I3000_DEAP ; 
 int /*<<< orphan*/  I3000_DERRSYN ; 
 int /*<<< orphan*/  I3000_EDEAP ; 
 int /*<<< orphan*/  I3000_ERRSTS ; 
 int I3000_ERRSTS_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mem_ctl_info *mci,
				 struct i3000_error_info *info)
{
	struct pci_dev *pdev;

	pdev = FUNC4(mci->dev);

	/*
	 * This is a mess because there is no atomic way to read all the
	 * registers at once and the registers can transition from CE being
	 * overwritten by UE.
	 */
	FUNC2(pdev, I3000_ERRSTS, &info->errsts);
	if (!(info->errsts & I3000_ERRSTS_BITS))
		return;
	FUNC0(pdev, I3000_EDEAP, &info->edeap);
	FUNC1(pdev, I3000_DEAP, &info->deap);
	FUNC0(pdev, I3000_DERRSYN, &info->derrsyn);
	FUNC2(pdev, I3000_ERRSTS, &info->errsts2);

	/*
	 * If the error is the same for both reads then the first set
	 * of reads is valid.  If there is a change then there is a CE
	 * with no info and the second set of reads is valid and
	 * should be UE info.
	 */
	if ((info->errsts ^ info->errsts2) & I3000_ERRSTS_BITS) {
		FUNC0(pdev, I3000_EDEAP, &info->edeap);
		FUNC1(pdev, I3000_DEAP, &info->deap);
		FUNC0(pdev, I3000_DERRSYN, &info->derrsyn);
	}

	/*
	 * Clear any error bits.
	 * (Yes, we really clear bits by writing 1 to them.)
	 */
	FUNC3(pdev, I3000_ERRSTS, I3000_ERRSTS_BITS,
			 I3000_ERRSTS_BITS);
}