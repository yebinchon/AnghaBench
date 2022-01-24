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
typedef  int uint32_t ;
struct scsi_device {int /*<<< orphan*/  hostdata; TYPE_1__* host; } ;
struct lpfc_vport {int cfg_lun_queue_depth; struct lpfc_hba* phba; } ;
struct lpfc_hba {int total_scsi_bufs; int cfg_hba_queue_depth; int /*<<< orphan*/  sdev_cnt; } ;
struct fc_rport {int /*<<< orphan*/  dd_data; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int LPFC_DISC_IOCB_BUFF_COUNT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct fc_rport*) ; 
 int FUNC2 (struct lpfc_vport*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 struct fc_rport* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct scsi_device *sdev)
{
	struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	struct fc_rport *rport = FUNC5(FUNC4(sdev));
	uint32_t total = 0;
	uint32_t num_to_alloc = 0;
	int num_allocated = 0;
	uint32_t sdev_cnt;

	if (!rport || FUNC1(rport))
		return -ENXIO;

	sdev->hostdata = rport->dd_data;
	sdev_cnt = FUNC0(&phba->sdev_cnt);

	/*
	 * Populate the cmds_per_lun count scsi_bufs into this host's globally
	 * available list of scsi buffers.  Don't allocate more than the
	 * HBA limit conveyed to the midlayer via the host structure.  The
	 * formula accounts for the lun_queue_depth + error handlers + 1
	 * extra.  This list of scsi bufs exists for the lifetime of the driver.
	 */
	total = phba->total_scsi_bufs;
	num_to_alloc = vport->cfg_lun_queue_depth + 2;

	/* If allocated buffers are enough do nothing */
	if ((sdev_cnt * (vport->cfg_lun_queue_depth + 2)) < total)
		return 0;

	/* Allow some exchanges to be available always to complete discovery */
	if (total >= phba->cfg_hba_queue_depth - LPFC_DISC_IOCB_BUFF_COUNT ) {
		FUNC3(vport, KERN_WARNING, LOG_FCP,
				 "0704 At limitation of %d preallocated "
				 "command buffers\n", total);
		return 0;
	/* Allow some exchanges to be available always to complete discovery */
	} else if (total + num_to_alloc >
		phba->cfg_hba_queue_depth - LPFC_DISC_IOCB_BUFF_COUNT ) {
		FUNC3(vport, KERN_WARNING, LOG_FCP,
				 "0705 Allocation request of %d "
				 "command buffers will exceed max of %d.  "
				 "Reducing allocation request to %d.\n",
				 num_to_alloc, phba->cfg_hba_queue_depth,
				 (phba->cfg_hba_queue_depth - total));
		num_to_alloc = phba->cfg_hba_queue_depth - total;
	}
	num_allocated = FUNC2(vport, num_to_alloc);
	if (num_to_alloc != num_allocated) {
			FUNC3(vport, KERN_ERR, LOG_FCP,
					 "0708 Allocation request of %d "
					 "command buffers did not succeed.  "
					 "Allocated %d buffers.\n",
					 num_to_alloc, num_allocated);
	}
	if (num_allocated > 0)
		phba->total_scsi_bufs += num_allocated;
	return 0;
}