#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lpfc_hba {TYPE_1__* pcidev; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  lpfc_sli_intr_handler ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpfc_hba*) ; 

__attribute__((used)) static int
FUNC4(struct lpfc_hba *phba)
{
	int rc;

	rc = FUNC2(phba->pcidev);
	if (!rc)
		FUNC0(phba, KERN_INFO, LOG_INIT,
				"0462 PCI enable MSI mode success.\n");
	else {
		FUNC0(phba, KERN_INFO, LOG_INIT,
				"0471 PCI enable MSI mode failed (%d)\n", rc);
		return rc;
	}

	rc = FUNC3(phba->pcidev->irq, lpfc_sli_intr_handler,
			 IRQF_SHARED, LPFC_DRIVER_NAME, phba);
	if (rc) {
		FUNC1(phba->pcidev);
		FUNC0(phba, KERN_WARNING, LOG_INIT,
				"0478 MSI request_irq failed (%d)\n", rc);
	}
	return rc;
}