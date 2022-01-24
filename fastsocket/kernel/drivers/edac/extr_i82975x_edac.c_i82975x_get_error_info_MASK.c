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
struct i82975x_error_info {int errsts; int errsts2; int /*<<< orphan*/  derrsyn; int /*<<< orphan*/  des; int /*<<< orphan*/  xeap; int /*<<< orphan*/  eap; } ;

/* Variables and functions */
 int /*<<< orphan*/  I82975X_DERRSYN ; 
 int /*<<< orphan*/  I82975X_DES ; 
 int /*<<< orphan*/  I82975X_EAP ; 
 int /*<<< orphan*/  I82975X_ERRSTS ; 
 int /*<<< orphan*/  I82975X_XEAP ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mem_ctl_info *mci,
		struct i82975x_error_info *info)
{
	struct pci_dev *pdev;

	pdev = FUNC4(mci->dev);

	/*
	 * This is a mess because there is no atomic way to read all the
	 * registers at once and the registers can transition from CE being
	 * overwritten by UE.
	 */
	FUNC2(pdev, I82975X_ERRSTS, &info->errsts);
	FUNC1(pdev, I82975X_EAP, &info->eap);
	FUNC0(pdev, I82975X_XEAP, &info->xeap);
	FUNC0(pdev, I82975X_DES, &info->des);
	FUNC0(pdev, I82975X_DERRSYN, &info->derrsyn);
	FUNC2(pdev, I82975X_ERRSTS, &info->errsts2);

	FUNC3(pdev, I82975X_ERRSTS, 0x0003, 0x0003);

	/*
	 * If the error is the same then we can for both reads then
	 * the first set of reads is valid.  If there is a change then
	 * there is a CE no info and the second set of reads is valid
	 * and should be UE info.
	 */
	if (!(info->errsts2 & 0x0003))
		return;

	if ((info->errsts ^ info->errsts2) & 0x0003) {
		FUNC1(pdev, I82975X_EAP, &info->eap);
		FUNC0(pdev, I82975X_XEAP, &info->xeap);
		FUNC0(pdev, I82975X_DES, &info->des);
		FUNC0(pdev, I82975X_DERRSYN,
				&info->derrsyn);
	}
}