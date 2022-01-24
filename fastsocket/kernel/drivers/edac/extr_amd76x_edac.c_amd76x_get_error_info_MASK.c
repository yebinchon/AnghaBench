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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int /*<<< orphan*/  dev; } ;
struct amd76x_error_info {int ecc_mode_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD76X_ECC_MODE_STATUS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mem_ctl_info *mci,
				struct amd76x_error_info *info)
{
	struct pci_dev *pdev;

	pdev = FUNC3(mci->dev);
	FUNC1(pdev, AMD76X_ECC_MODE_STATUS,
			&info->ecc_mode_status);

	if (info->ecc_mode_status & FUNC0(8))
		FUNC2(pdev, AMD76X_ECC_MODE_STATUS,
				 (u32) FUNC0(8), (u32) FUNC0(8));

	if (info->ecc_mode_status & FUNC0(9))
		FUNC2(pdev, AMD76X_ECC_MODE_STATUS,
				 (u32) FUNC0(9), (u32) FUNC0(9));
}