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
struct beiscsi_hba {int /*<<< orphan*/  shost; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  boot_kset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct beiscsi_hba* FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pcidev)
{

	struct beiscsi_hba *phba = NULL;

	phba = FUNC8(pcidev);
	if (!phba) {
		FUNC2(&pcidev->dev, "beiscsi_remove called with no phba\n");
		return;
	}

	FUNC0(phba);
	FUNC1(phba);
	FUNC3(phba->boot_kset);
	FUNC5(phba->shost);
	FUNC6(phba->pcidev);
	FUNC4(phba->shost);
	FUNC7(pcidev);
}