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
struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {size_t chip_id; int logging_level; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  iomb_size; int /*<<< orphan*/  name; scalar_t__ id; struct Scsi_Host* shost; struct sas_ha_struct* sas; int /*<<< orphan*/  irq; int /*<<< orphan*/ * chip; int /*<<< orphan*/ * dev; struct pci_dev* pdev; } ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 char* DRV_NAME ; 
 int /*<<< orphan*/  IOMB_SIZE_SPC ; 
 int /*<<< orphan*/  IOMB_SIZE_SPCV ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 size_t chip_8001 ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,struct pci_device_id const*) ; 
 int /*<<< orphan*/ * pm8001_chips ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  pm8001_id ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  pm8001_tasklet ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static struct pm8001_hba_info *FUNC6(struct pci_dev *pdev,
				 const struct pci_device_id *ent,
				struct Scsi_Host *shost)

{
	struct pm8001_hba_info *pm8001_ha;
	struct sas_ha_struct *sha = FUNC0(shost);


	pm8001_ha = sha->lldd_ha;
	if (!pm8001_ha)
		return NULL;

	pm8001_ha->pdev = pdev;
	pm8001_ha->dev = &pdev->dev;
	pm8001_ha->chip_id = ent->driver_data;
	pm8001_ha->chip = &pm8001_chips[pm8001_ha->chip_id];
	pm8001_ha->irq = pdev->irq;
	pm8001_ha->sas = sha;
	pm8001_ha->shost = shost;
	pm8001_ha->id = pm8001_id++;
	pm8001_ha->logging_level = 0x01;
	FUNC4(pm8001_ha->name, "%s%d", DRV_NAME, pm8001_ha->id);
	/* IOMB size is 128 for 8088/89 controllers */
	if (pm8001_ha->chip_id != chip_8001)
		pm8001_ha->iomb_size = IOMB_SIZE_SPCV;
	else
		pm8001_ha->iomb_size = IOMB_SIZE_SPC;

#ifdef PM8001_USE_TASKLET
	/**
	* default tasklet for non msi-x interrupt handler/first msi-x
	* interrupt handler
	**/
	tasklet_init(&pm8001_ha->tasklet, pm8001_tasklet,
			(unsigned long)pm8001_ha);
#endif
	FUNC3(pm8001_ha);
	if (!FUNC1(pm8001_ha, ent))
		return pm8001_ha;
	FUNC2(pm8001_ha);
	return NULL;
}