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
struct i82443bxgx_edacmc_error_info {int eap; } ;

/* Variables and functions */
 int /*<<< orphan*/  I82443BXGX_EAP ; 
 int I82443BXGX_EAP_OFFSET_MBE ; 
 int I82443BXGX_EAP_OFFSET_SBE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mem_ctl_info *mci,
				struct i82443bxgx_edacmc_error_info
				*info)
{
	struct pci_dev *pdev;
	pdev = FUNC2(mci->dev);
	FUNC0(pdev, I82443BXGX_EAP, &info->eap);
	if (info->eap & I82443BXGX_EAP_OFFSET_SBE)
		/* Clear error to allow next error to be reported [p.61] */
		FUNC1(pdev, I82443BXGX_EAP,
				 I82443BXGX_EAP_OFFSET_SBE,
				 I82443BXGX_EAP_OFFSET_SBE);

	if (info->eap & I82443BXGX_EAP_OFFSET_MBE)
		/* Clear error to allow next error to be reported [p.61] */
		FUNC1(pdev, I82443BXGX_EAP,
				 I82443BXGX_EAP_OFFSET_MBE,
				 I82443BXGX_EAP_OFFSET_MBE);
}