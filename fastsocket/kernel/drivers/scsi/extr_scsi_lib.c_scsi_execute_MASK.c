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
struct scsi_device {int /*<<< orphan*/  request_queue; } ;
struct request {unsigned char* sense; int retries; int timeout; int cmd_flags; unsigned int resid_len; int errors; int /*<<< orphan*/  q; int /*<<< orphan*/  cmd_type; scalar_t__ sense_len; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int DMA_TO_DEVICE ; 
 int DRIVER_ERROR ; 
 int REQ_PREEMPT ; 
 int REQ_QUIET ; 
 int /*<<< orphan*/  REQ_TYPE_BLOCK_PC ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int) ; 
 struct request* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct request*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct scsi_device *sdev, const unsigned char *cmd,
		 int data_direction, void *buffer, unsigned bufflen,
		 unsigned char *sense, int timeout, int retries, int flags,
		 int *resid)
{
	struct request *req;
	int write = (data_direction == DMA_TO_DEVICE);
	int ret = DRIVER_ERROR << 24;

	req = FUNC2(sdev->request_queue, write, __GFP_WAIT);
	if (!req)
		return ret;

	if (bufflen &&	FUNC4(sdev->request_queue, req,
					buffer, bufflen, __GFP_WAIT))
		goto out;

	req->cmd_len = FUNC0(cmd[0]);
	FUNC5(req->cmd, cmd, req->cmd_len);
	req->sense = sense;
	req->sense_len = 0;
	req->retries = retries;
	req->timeout = timeout;
	req->cmd_type = REQ_TYPE_BLOCK_PC;
	req->cmd_flags |= flags | REQ_QUIET | REQ_PREEMPT;

	/*
	 * head injection *required* here otherwise quiesce won't work
	 */
	FUNC1(req->q, NULL, req, 1);

	/*
	 * Some devices (USB mass-storage in particular) may transfer
	 * garbage data together with a residue indicating that the data
	 * is invalid.  Prevent the garbage from being misinterpreted
	 * and prevent security leaks by zeroing out the excess data.
	 */
	if (FUNC7(req->resid_len > 0 && req->resid_len <= bufflen))
		FUNC6(buffer + (bufflen - req->resid_len), 0, req->resid_len);

	if (resid)
		*resid = req->resid_len;
	ret = req->errors;
 out:
	FUNC3(req);

	return ret;
}