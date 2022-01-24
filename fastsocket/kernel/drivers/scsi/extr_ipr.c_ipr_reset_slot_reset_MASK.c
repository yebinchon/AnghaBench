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
struct ipr_ioa_cfg {struct pci_dev* pdev; } ;
struct ipr_cmnd {int /*<<< orphan*/  job_step; struct ipr_ioa_cfg* ioa_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  IPR_PCI_RESET_TIMEOUT ; 
 int IPR_RC_JOB_RETURN ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  ipr_reset_slot_reset_done ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcie_warm_reset ; 

__attribute__((used)) static int FUNC2(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	struct pci_dev *pdev = ioa_cfg->pdev;

	ENTER;
	FUNC1(pdev, pcie_warm_reset);
	ipr_cmd->job_step = ipr_reset_slot_reset_done;
	FUNC0(ipr_cmd, IPR_PCI_RESET_TIMEOUT);
	LEAVE;
	return IPR_RC_JOB_RETURN;
}