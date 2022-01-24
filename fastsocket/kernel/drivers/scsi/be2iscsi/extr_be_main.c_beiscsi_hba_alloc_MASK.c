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
struct pci_dev {int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  dev; } ;
struct beiscsi_hba {int interface_handle; struct Scsi_Host* shost; TYPE_1__* pcidev; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_cmd_len; scalar_t__ max_channel; int /*<<< orphan*/  max_id; int /*<<< orphan*/  dma_boundary; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE2_MAX_SESSIONS ; 
 int /*<<< orphan*/  BEISCSI_MAX_CMD_LEN ; 
 int /*<<< orphan*/  BEISCSI_NUM_MAX_LUN ; 
 int /*<<< orphan*/  beiscsi_scsi_transport ; 
 int /*<<< orphan*/  beiscsi_sht ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 struct beiscsi_hba* FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct beiscsi_hba*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct beiscsi_hba*) ; 

__attribute__((used)) static struct beiscsi_hba *FUNC9(struct pci_dev *pcidev)
{
	struct beiscsi_hba *phba;
	struct Scsi_Host *shost;

	shost = FUNC2(&beiscsi_sht, sizeof(*phba), 0);
	if (!shost) {
		FUNC0(&pcidev->dev,
			"beiscsi_hba_alloc - iscsi_host_alloc failed\n");
		return NULL;
	}
	shost->dma_boundary = pcidev->dma_mask;
	shost->max_id = BE2_MAX_SESSIONS;
	shost->max_channel = 0;
	shost->max_cmd_len = BEISCSI_MAX_CMD_LEN;
	shost->max_lun = BEISCSI_NUM_MAX_LUN;
	shost->transportt = beiscsi_scsi_transport;
	phba = FUNC4(shost);
	FUNC5(phba, 0, sizeof(*phba));
	phba->shost = shost;
	phba->pcidev = FUNC6(pcidev);
	FUNC8(pcidev, phba);
	phba->interface_handle = 0xFFFFFFFF;

	if (FUNC1(shost, &phba->pcidev->dev))
		goto free_devices;

	return phba;

free_devices:
	FUNC7(phba->pcidev);
	FUNC3(phba->shost);
	return NULL;
}