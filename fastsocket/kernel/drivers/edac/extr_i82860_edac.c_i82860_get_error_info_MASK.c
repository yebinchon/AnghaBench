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
struct i82860_error_info {int errsts; int derrsyn; int errsts2; int /*<<< orphan*/  eap; } ;

/* Variables and functions */
 int /*<<< orphan*/  I82860_DERRCTL_STS ; 
 int /*<<< orphan*/  I82860_EAP ; 
 int /*<<< orphan*/  I82860_ERRSTS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mem_ctl_info *mci,
				struct i82860_error_info *info)
{
	struct pci_dev *pdev;

	pdev = FUNC3(mci->dev);

	/*
	 * This is a mess because there is no atomic way to read all the
	 * registers at once and the registers can transition from CE being
	 * overwritten by UE.
	 */
	FUNC1(pdev, I82860_ERRSTS, &info->errsts);
	FUNC0(pdev, I82860_EAP, &info->eap);
	FUNC1(pdev, I82860_DERRCTL_STS, &info->derrsyn);
	FUNC1(pdev, I82860_ERRSTS, &info->errsts2);

	FUNC2(pdev, I82860_ERRSTS, 0x0003, 0x0003);

	/*
	 * If the error is the same for both reads then the first set of reads
	 * is valid.  If there is a change then there is a CE no info and the
	 * second set of reads is valid and should be UE info.
	 */
	if (!(info->errsts2 & 0x0003))
		return;

	if ((info->errsts ^ info->errsts2) & 0x0003) {
		FUNC0(pdev, I82860_EAP, &info->eap);
		FUNC1(pdev, I82860_DERRCTL_STS, &info->derrsyn);
	}
}