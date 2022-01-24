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
struct scsi_device {scalar_t__ tagged_supported; TYPE_2__* host; } ;
struct lpfc_vport {int /*<<< orphan*/  cfg_lun_queue_depth; struct lpfc_hba* phba; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ring; } ;
struct lpfc_hba {int cfg_poll; TYPE_1__ sli; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int DISABLE_FCP_RING_INT ; 
 int ENABLE_FCP_RING_POLLING ; 
 int /*<<< orphan*/  HA_R0RE_REQ ; 
 size_t LPFC_FCP_RING ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct scsi_device *sdev)
{
	struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
	struct lpfc_hba   *phba = vport->phba;

	if (sdev->tagged_supported)
		FUNC2(sdev, vport->cfg_lun_queue_depth);
	else
		FUNC3(sdev, vport->cfg_lun_queue_depth);

	if (phba->cfg_poll & ENABLE_FCP_RING_POLLING) {
		FUNC1(phba,
			&phba->sli.ring[LPFC_FCP_RING], HA_R0RE_REQ);
		if (phba->cfg_poll & DISABLE_FCP_RING_INT)
			FUNC0(phba);
	}

	return 0;
}