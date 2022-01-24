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
struct iwl_trans_pcie {int /*<<< orphan*/  drv; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 struct iwl_trans* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct iwl_trans *trans = FUNC3(pdev);
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	FUNC1(trans_pcie->drv);
	FUNC2(trans);

	FUNC4(pdev, NULL);
}