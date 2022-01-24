#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_request {int /*<<< orphan*/  sense; int /*<<< orphan*/  bio; TYPE_3__* stp; } ;
struct rq_map_data {int null_mapped; } ;
struct request {int timeout; int retries; int /*<<< orphan*/  q; struct st_request* end_io_data; scalar_t__ sense_len; int /*<<< orphan*/  sense; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmd; int /*<<< orphan*/  bio; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  cmd_type; } ;
struct TYPE_6__ {TYPE_2__* device; TYPE_1__* buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  request_queue; } ;
struct TYPE_4__ {struct rq_map_data map_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MAX_CDB ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int DMA_TO_DEVICE ; 
 int DRIVER_ERROR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REQ_QUIET ; 
 int /*<<< orphan*/  REQ_TYPE_BLOCK_PC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int,int /*<<< orphan*/ ) ; 
 struct request* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct request*,struct rq_map_data*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_scsi_execute_end ; 

__attribute__((used)) static int FUNC7(struct st_request *SRpnt, const unsigned char *cmd,
			   int data_direction, void *buffer, unsigned bufflen,
			   int timeout, int retries)
{
	struct request *req;
	struct rq_map_data *mdata = &SRpnt->stp->buffer->map_data;
	int err = 0;
	int write = (data_direction == DMA_TO_DEVICE);

	req = FUNC2(SRpnt->stp->device->request_queue, write,
			      GFP_KERNEL);
	if (!req)
		return DRIVER_ERROR << 24;

	req->cmd_type = REQ_TYPE_BLOCK_PC;
	req->cmd_flags |= REQ_QUIET;

	mdata->null_mapped = 1;

	if (bufflen) {
		err = FUNC4(req->q, req, mdata, NULL, bufflen,
				      GFP_KERNEL);
		if (err) {
			FUNC3(req);
			return DRIVER_ERROR << 24;
		}
	}

	SRpnt->bio = req->bio;
	req->cmd_len = FUNC0(cmd[0]);
	FUNC6(req->cmd, 0, BLK_MAX_CDB);
	FUNC5(req->cmd, cmd, req->cmd_len);
	req->sense = SRpnt->sense;
	req->sense_len = 0;
	req->timeout = timeout;
	req->retries = retries;
	req->end_io_data = SRpnt;

	FUNC1(req->q, NULL, req, 1, st_scsi_execute_end);
	return 0;
}