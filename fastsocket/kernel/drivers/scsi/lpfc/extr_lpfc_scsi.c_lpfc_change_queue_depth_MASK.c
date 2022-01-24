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
struct scsi_device {unsigned long queue_depth; int /*<<< orphan*/  lun; struct lpfc_rport_data* hostdata; TYPE_1__* host; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_rport_data {int /*<<< orphan*/  pnode; } ;
struct lpfc_hba {int dummy; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 

int
FUNC3(struct scsi_device *sdev, int qdepth, int reason)
{
	struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	struct lpfc_rport_data *rdata;
	unsigned long new_queue_depth, old_queue_depth;

	old_queue_depth = sdev->queue_depth;
	FUNC1(sdev, FUNC2(sdev), qdepth);
	new_queue_depth = sdev->queue_depth;
	rdata = sdev->hostdata;
	if (rdata)
		FUNC0(phba, vport,
						       rdata->pnode, sdev->lun,
						       old_queue_depth,
						       new_queue_depth);
	return sdev->queue_depth;
}