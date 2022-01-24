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
typedef  int u32 ;
struct pm8001_hba_info {int /*<<< orphan*/  shost; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm8001_interrupt_handler_intx ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct pm8001_hba_info*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(struct pm8001_hba_info *pm8001_ha)
{
	struct pci_dev *pdev;
	int rc;

	pdev = pm8001_ha->pdev;

#ifdef PM8001_USE_MSIX
	if (pci_find_capability(pdev, PCI_CAP_ID_MSIX))
		return pm8001_setup_msix(pm8001_ha);
	else {
		PM8001_INIT_DBG(pm8001_ha,
			pm8001_printk("MSIX not supported!!!\n"));
		goto intx;
	}
#endif

intx:
	/* initialize the INT-X interrupt */
	rc = FUNC5(pdev->irq, pm8001_interrupt_handler_intx, IRQF_SHARED,
		DRV_NAME, FUNC1(pm8001_ha->shost));
	return rc;
}