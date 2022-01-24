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
struct scsi_device {TYPE_2__* scsi_dh_data; } ;
struct scsi_cmnd {int /*<<< orphan*/  cmnd; } ;
struct request {int /*<<< orphan*/  nr_phys_segments; } ;
struct TYPE_4__ {TYPE_1__* scsi_dh; } ;
struct TYPE_3__ {int (* prep_fn ) (struct scsi_device*,struct request*) ;} ;

/* Variables and functions */
 int BLKPREP_DEFER ; 
 int BLKPREP_OK ; 
 int /*<<< orphan*/  BLK_MAX_CDB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scsi_cmnd* FUNC2 (struct scsi_device*,struct request*) ; 
 int FUNC3 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct scsi_device*,struct request*) ; 
 int FUNC5 (struct scsi_device*,struct request*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct scsi_device *sdev, struct request *req)
{
	struct scsi_cmnd *cmd;
	int ret = FUNC4(sdev, req);

	if (ret != BLKPREP_OK)
		return ret;

	if (FUNC6(sdev->scsi_dh_data && sdev->scsi_dh_data->scsi_dh
			 && sdev->scsi_dh_data->scsi_dh->prep_fn)) {
		ret = sdev->scsi_dh_data->scsi_dh->prep_fn(sdev, req);
		if (ret != BLKPREP_OK)
			return ret;
	}

	/*
	 * Filesystem requests must transfer data.
	 */
	FUNC0(!req->nr_phys_segments);

	cmd = FUNC2(sdev, req);
	if (FUNC6(!cmd))
		return BLKPREP_DEFER;

	FUNC1(cmd->cmnd, 0, BLK_MAX_CDB);
	return FUNC3(cmd, GFP_ATOMIC);
}