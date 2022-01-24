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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct lpfc_hba {scalar_t__ brd_no; int /*<<< orphan*/  ct_ev_waiters; int /*<<< orphan*/  ct_ev_lock; struct pci_dev* pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 struct lpfc_hba* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct lpfc_hba *
FUNC6(struct pci_dev *pdev)
{
	struct lpfc_hba *phba;

	/* Allocate memory for HBA structure */
	phba = FUNC3(sizeof(struct lpfc_hba), GFP_KERNEL);
	if (!phba) {
		FUNC1(&pdev->dev, "failed to allocate hba struct\n");
		return NULL;
	}

	/* Set reference to PCI device in HBA structure */
	phba->pcidev = pdev;

	/* Assign an unused board number */
	phba->brd_no = FUNC4();
	if (phba->brd_no < 0) {
		FUNC2(phba);
		return NULL;
	}

	FUNC5(&phba->ct_ev_lock);
	FUNC0(&phba->ct_ev_waiters);

	return phba;
}