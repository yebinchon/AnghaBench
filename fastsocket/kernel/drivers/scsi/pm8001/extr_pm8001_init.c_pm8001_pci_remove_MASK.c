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
struct sas_ha_struct {struct sas_ha_struct* sas_port; struct sas_ha_struct* sas_phy; struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int number_of_intr; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; struct sas_ha_struct* outq; TYPE_1__* msix_entries; int /*<<< orphan*/  shost; int /*<<< orphan*/  list; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* chip_soft_rst ) (struct pm8001_hba_info*) ;int /*<<< orphan*/  (* interrupt_disable ) (struct pm8001_hba_info*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 TYPE_2__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct sas_ha_struct* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct pci_dev *pdev)
{
	struct sas_ha_struct *sha = FUNC5(pdev);
	struct pm8001_hba_info *pm8001_ha;
	int i;
	pm8001_ha = sha->lldd_ha;
	FUNC7(pdev, NULL);
	FUNC10(sha);
	FUNC9(pm8001_ha->shost);
	FUNC2(&pm8001_ha->list);
	FUNC11(pm8001_ha->shost);
	PM8001_CHIP_DISP->interrupt_disable(pm8001_ha, 0xFF);
	PM8001_CHIP_DISP->chip_soft_rst(pm8001_ha);

#ifdef PM8001_USE_MSIX
	for (i = 0; i < pm8001_ha->number_of_intr; i++)
		synchronize_irq(pm8001_ha->msix_entries[i].vector);
	for (i = 0; i < pm8001_ha->number_of_intr; i++)
		free_irq(pm8001_ha->msix_entries[i].vector,
				&pm8001_ha->outq[i]);
	pci_disable_msix(pdev);
#else
	FUNC0(pm8001_ha->irq, sha);
#endif
#ifdef PM8001_USE_TASKLET
	tasklet_kill(&pm8001_ha->tasklet);
#endif
	FUNC8(pm8001_ha);
	FUNC1(sha->sas_phy);
	FUNC1(sha->sas_port);
	FUNC1(sha);
	FUNC6(pdev);
	FUNC3(pdev);
}