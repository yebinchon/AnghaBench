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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dummy; } ;
struct iwl_trans_pcie {int /*<<< orphan*/  drv; } ;
struct iwl_trans {int /*<<< orphan*/  dbgfs_dir; } ;
struct iwl_cfg {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,struct iwl_cfg const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 struct iwl_trans* FUNC6 (struct pci_dev*,struct pci_device_id const*,struct iwl_cfg const*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct iwl_trans*) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	const struct iwl_cfg *cfg = (struct iwl_cfg *)(ent->driver_data);
	struct iwl_trans *iwl_trans;
	struct iwl_trans_pcie *trans_pcie;
	int ret;

	iwl_trans = FUNC6(pdev, ent, cfg);
	if (iwl_trans == NULL)
		return -ENOMEM;

	FUNC8(pdev, iwl_trans);

	trans_pcie = FUNC1(iwl_trans);
	trans_pcie->drv = FUNC3(iwl_trans, cfg);

	if (FUNC0(trans_pcie->drv)) {
		ret = FUNC2(trans_pcie->drv);
		goto out_free_trans;
	}

	/* register transport layer debugfs here */
	ret = FUNC5(iwl_trans, iwl_trans->dbgfs_dir);
	if (ret)
		goto out_free_drv;

	return 0;

out_free_drv:
	FUNC4(trans_pcie->drv);
out_free_trans:
	FUNC7(iwl_trans);
	FUNC8(pdev, NULL);
	return ret;
}