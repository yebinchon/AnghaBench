#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {scalar_t__ chip_id; int number_of_intr; int /*<<< orphan*/  shost; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  name; } ;
struct pci_dev {int /*<<< orphan*/  current_state; } ;
struct TYPE_2__ {int (* chip_init ) (struct pm8001_hba_info*) ;int /*<<< orphan*/  (* interrupt_enable ) (struct pm8001_hba_info*,int) ;int /*<<< orphan*/  (* interrupt_disable ) (struct pm8001_hba_info*,int) ;int /*<<< orphan*/  (* chip_soft_rst ) (struct pm8001_hba_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 TYPE_1__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ chip_8001 ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sas_ha_struct* FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  pm8001_tasklet ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pm8001_hba_info*) ; 
 int FUNC14 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC19(struct pci_dev *pdev)
{
	struct sas_ha_struct *sha = FUNC4(pdev);
	struct pm8001_hba_info *pm8001_ha;
	int rc;
	u8 i = 0;
	u32 device_state;
	pm8001_ha = sha->lldd_ha;
	device_state = pdev->current_state;

	FUNC9("pdev=0x%p, slot=%s, resuming from previous "
		"operating state [D%d]\n", pdev, pm8001_ha->name, device_state);

	FUNC8(pdev, PCI_D0);
	FUNC3(pdev, PCI_D0, 0);
	FUNC6(pdev);
	rc = FUNC2(pdev);
	if (rc) {
		FUNC9("slot=%s Enable device failed during resume\n",
			      pm8001_ha->name);
		goto err_out_enable;
	}

	FUNC7(pdev);
	rc = FUNC5(pdev);
	if (rc)
		goto err_out_disable;

	/* chip soft rst only for spc */
	if (pm8001_ha->chip_id == chip_8001) {
		PM8001_CHIP_DISP->chip_soft_rst(pm8001_ha);
		FUNC0(pm8001_ha,
			FUNC9("chip soft reset successful\n"));
	}
	rc = PM8001_CHIP_DISP->chip_init(pm8001_ha);
	if (rc)
		goto err_out_disable;

	/* disable all the interrupt bits */
	PM8001_CHIP_DISP->interrupt_disable(pm8001_ha, 0xFF);

	rc = FUNC10(pm8001_ha);
	if (rc)
		goto err_out_disable;
#ifdef PM8001_USE_TASKLET
	/* default tasklet for non msi-x interrupt handler/first msi-x
	* interrupt handler */
	tasklet_init(&pm8001_ha->tasklet, pm8001_tasklet,
			(unsigned long)pm8001_ha);
#endif
	PM8001_CHIP_DISP->interrupt_enable(pm8001_ha, 0);
	if (pm8001_ha->chip_id != chip_8001) {
		for (i = 1; i < pm8001_ha->number_of_intr; i++)
			PM8001_CHIP_DISP->interrupt_enable(pm8001_ha, i);
	}
	FUNC12(pm8001_ha->shost);
	return 0;

err_out_disable:
	FUNC11(pm8001_ha->shost);
	FUNC1(pdev);
err_out_enable:
	return rc;
}