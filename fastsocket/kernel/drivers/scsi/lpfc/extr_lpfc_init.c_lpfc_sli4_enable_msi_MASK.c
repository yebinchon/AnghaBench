#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* fcp_eq_hdl; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_2__ sli4_hba; TYPE_3__* pcidev; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;
struct TYPE_5__ {int idx; struct lpfc_hba* phba; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  lpfc_sli4_intr_handler ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpfc_hba*) ; 

__attribute__((used)) static int
FUNC4(struct lpfc_hba *phba)
{
	int rc, index;

	rc = FUNC2(phba->pcidev);
	if (!rc)
		FUNC0(phba, KERN_INFO, LOG_INIT,
				"0487 PCI enable MSI mode success.\n");
	else {
		FUNC0(phba, KERN_INFO, LOG_INIT,
				"0488 PCI enable MSI mode failed (%d)\n", rc);
		return rc;
	}

	rc = FUNC3(phba->pcidev->irq, lpfc_sli4_intr_handler,
			 IRQF_SHARED, LPFC_DRIVER_NAME, phba);
	if (rc) {
		FUNC1(phba->pcidev);
		FUNC0(phba, KERN_WARNING, LOG_INIT,
				"0490 MSI request_irq failed (%d)\n", rc);
		return rc;
	}

	for (index = 0; index < phba->cfg_fcp_io_channel; index++) {
		phba->sli4_hba.fcp_eq_hdl[index].idx = index;
		phba->sli4_hba.fcp_eq_hdl[index].phba = phba;
	}

	return 0;
}