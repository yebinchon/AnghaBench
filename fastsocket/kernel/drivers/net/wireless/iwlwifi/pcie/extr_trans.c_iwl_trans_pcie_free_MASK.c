#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iwl_trans_pcie {TYPE_1__* pci_dev; int /*<<< orphan*/  hw_base; } ;
struct iwl_trans {int /*<<< orphan*/  dev_cmd_pool; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	FUNC11(trans_pcie->pci_dev->irq);

	FUNC5(trans);
	FUNC4(trans);

	FUNC1(trans_pcie->pci_dev->irq, trans);
	FUNC3(trans);

	FUNC9(trans_pcie->pci_dev);
	FUNC2(trans_pcie->hw_base);
	FUNC10(trans_pcie->pci_dev);
	FUNC8(trans_pcie->pci_dev);
	FUNC7(trans->dev_cmd_pool);

	FUNC6(trans);
}