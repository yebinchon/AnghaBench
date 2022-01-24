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
struct scsi_device {int dummy; } ;
struct scsi_cmnd {int transfersize; int /*<<< orphan*/  allowed; int /*<<< orphan*/  sc_data_direction; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  sdb; } ;
struct request {int /*<<< orphan*/  retries; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  nr_phys_segments; scalar_t__ bio; } ;

/* Variables and functions */
 int BLKPREP_DEFER ; 
 int BLKPREP_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ WRITE ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 struct scsi_cmnd* FUNC4 (struct scsi_device*,struct request*) ; 
 int FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct scsi_device*,struct request*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct scsi_device *sdev, struct request *req)
{
	struct scsi_cmnd *cmd;
	int ret = FUNC6(sdev, req);

	if (ret != BLKPREP_OK)
		return ret;

	cmd = FUNC4(sdev, req);
	if (FUNC7(!cmd))
		return BLKPREP_DEFER;

	/*
	 * BLOCK_PC requests may transfer data, in which case they must
	 * a bio attached to them.  Or they might contain a SCSI command
	 * that does not transfer data, in which case they may optionally
	 * submit a request without an attached bio.
	 */
	if (req->bio) {
		int ret;

		FUNC0(!req->nr_phys_segments);

		ret = FUNC5(cmd, GFP_ATOMIC);
		if (FUNC7(ret))
			return ret;
	} else {
		FUNC0(FUNC1(req));

		FUNC2(&cmd->sdb, 0, sizeof(cmd->sdb));
		req->buffer = NULL;
	}

	cmd->cmd_len = req->cmd_len;
	if (!FUNC1(req))
		cmd->sc_data_direction = DMA_NONE;
	else if (FUNC3(req) == WRITE)
		cmd->sc_data_direction = DMA_TO_DEVICE;
	else
		cmd->sc_data_direction = DMA_FROM_DEVICE;
	
	cmd->transfersize = FUNC1(req);
	cmd->allowed = req->retries;
	return BLKPREP_OK;
}