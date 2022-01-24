#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ conf_regs_memmap_p; int /*<<< orphan*/  sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; scalar_t__ cfg_sriov_nr_virtfn; TYPE_2__ sli4_hba; TYPE_1__* pport; int /*<<< orphan*/  cfg_enable_hba_reset; struct pci_dev* pcidev; } ;
struct completion {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {scalar_t__ fc_flag; } ;

/* Variables and functions */
 int EACCES ; 
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 scalar_t__ FC_OFFLINE_MODE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 scalar_t__ LPFC_CTL_PDEV_CTL_DRST ; 
 scalar_t__ LPFC_CTL_PDEV_CTL_FRST ; 
 scalar_t__ LPFC_CTL_PDEV_CTL_OFFSET ; 
 scalar_t__ LPFC_DV_RESET ; 
 int /*<<< orphan*/  LPFC_EVT_OFFLINE ; 
 int /*<<< orphan*/  LPFC_EVT_ONLINE ; 
 scalar_t__ LPFC_FW_DUMP ; 
 scalar_t__ LPFC_FW_DUMP_REQUEST ; 
 scalar_t__ LPFC_FW_RESET ; 
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 int FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int FUNC5 (struct lpfc_hba*,scalar_t__) ; 
 int FUNC6 (struct lpfc_hba*,int*,struct completion*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct completion*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static ssize_t
FUNC12(struct lpfc_hba *phba, uint32_t opcode)
{
	struct completion online_compl;
	struct pci_dev *pdev = phba->pcidev;
	uint32_t before_fc_flag;
	uint32_t sriov_nr_virtfn;
	uint32_t reg_val;
	int status = 0, rc = 0;
	int job_posted = 1, sriov_err;

	if (!phba->cfg_enable_hba_reset)
		return -EACCES;

	if ((phba->sli_rev < LPFC_SLI_REV4) ||
	    (FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) !=
	     LPFC_SLI_INTF_IF_TYPE_2))
		return -EPERM;

	/* Keep state if we need to restore back */
	before_fc_flag = phba->pport->fc_flag;
	sriov_nr_virtfn = phba->cfg_sriov_nr_virtfn;

	/* Disable SR-IOV virtual functions if enabled */
	if (phba->cfg_sriov_nr_virtfn) {
		FUNC8(pdev);
		phba->cfg_sriov_nr_virtfn = 0;
	}

	status = FUNC2(phba, LPFC_EVT_OFFLINE);

	if (status != 0)
		return status;

	/* wait for the device to be quiesced before firmware reset */
	FUNC7(100);

	reg_val = FUNC9(phba->sli4_hba.conf_regs_memmap_p +
			LPFC_CTL_PDEV_CTL_OFFSET);

	if (opcode == LPFC_FW_DUMP)
		reg_val |= LPFC_FW_DUMP_REQUEST;
	else if (opcode == LPFC_FW_RESET)
		reg_val |= LPFC_CTL_PDEV_CTL_FRST;
	else if (opcode == LPFC_DV_RESET)
		reg_val |= LPFC_CTL_PDEV_CTL_DRST;

	FUNC11(reg_val, phba->sli4_hba.conf_regs_memmap_p +
	       LPFC_CTL_PDEV_CTL_OFFSET);
	/* flush */
	FUNC9(phba->sli4_hba.conf_regs_memmap_p + LPFC_CTL_PDEV_CTL_OFFSET);

	/* delay driver action following IF_TYPE_2 reset */
	rc = FUNC4(phba);

	if (rc == -EPERM) {
		/* no privilage for reset */
		FUNC3(phba, KERN_ERR, LOG_SLI,
				"3150 No privilage to perform the requested "
				"access: x%x\n", reg_val);
	} else if (rc == -EIO) {
		/* reset failed, there is nothing more we can do */
		FUNC3(phba, KERN_ERR, LOG_SLI,
				"3153 Fail to perform the requested "
				"access: x%x\n", reg_val);
		return rc;
	}

	/* keep the original port state */
	if (before_fc_flag & FC_OFFLINE_MODE)
		goto out;

	FUNC1(&online_compl);
	job_posted = FUNC6(phba, &status, &online_compl,
					   LPFC_EVT_ONLINE);
	if (!job_posted)
		goto out;

	FUNC10(&online_compl);

out:
	/* in any case, restore the virtual functions enabled as before */
	if (sriov_nr_virtfn) {
		sriov_err =
			FUNC5(phba, sriov_nr_virtfn);
		if (!sriov_err)
			phba->cfg_sriov_nr_virtfn = sriov_nr_virtfn;
	}

	/* return proper error code */
	if (!rc) {
		if (!job_posted)
			rc = -ENOMEM;
		else if (status)
			rc = -EIO;
	}
	return rc;
}