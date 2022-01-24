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
struct request {int* cmd; int cmd_flags; int /*<<< orphan*/  q; int /*<<< orphan*/  retries; int /*<<< orphan*/  timeout; int /*<<< orphan*/  cmd_type; int /*<<< orphan*/  cmd_len; } ;
typedef  int /*<<< orphan*/  short_trespass ;
typedef  int /*<<< orphan*/  long_trespass ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CLARIION_BUFFER_SIZE ; 
 int /*<<< orphan*/  CLARIION_RETRIES ; 
 int /*<<< orphan*/  CLARIION_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
#define  INQUIRY 130 
 int /*<<< orphan*/  KERN_INFO ; 
#define  MODE_SELECT 129 
#define  MODE_SELECT_10 128 
 int /*<<< orphan*/  READ ; 
 int REQ_FAILFAST_DEV ; 
 int REQ_FAILFAST_DRIVER ; 
 int REQ_FAILFAST_TRANSPORT ; 
 int /*<<< orphan*/  REQ_TYPE_BLOCK_PC ; 
 int /*<<< orphan*/  WRITE ; 
 struct request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct request*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_device*,char*) ; 

__attribute__((used)) static struct request *FUNC7(struct scsi_device *sdev, int cmd,
				unsigned char *buffer)
{
	struct request *rq;
	int len = 0;

	rq = FUNC2(sdev->request_queue,
			(cmd != INQUIRY) ? WRITE : READ, GFP_NOIO);
	if (!rq) {
		FUNC6(KERN_INFO, sdev, "get_req: blk_get_request failed");
		return NULL;
	}

	rq->cmd_len = FUNC1(cmd);
	rq->cmd[0] = cmd;

	switch (cmd) {
	case MODE_SELECT:
		len = sizeof(short_trespass);
		rq->cmd[1] = 0x10;
		rq->cmd[4] = len;
		break;
	case MODE_SELECT_10:
		len = sizeof(long_trespass);
		rq->cmd[1] = 0x10;
		rq->cmd[8] = len;
		break;
	case INQUIRY:
		len = CLARIION_BUFFER_SIZE;
		rq->cmd[4] = len;
		FUNC5(buffer, 0, len);
		break;
	default:
		FUNC0(1);
		break;
	}

	rq->cmd_type = REQ_TYPE_BLOCK_PC;
	rq->cmd_flags |= REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
			 REQ_FAILFAST_DRIVER;
	rq->timeout = CLARIION_TIMEOUT;
	rq->retries = CLARIION_RETRIES;

	if (FUNC4(rq->q, rq, buffer, len, GFP_NOIO)) {
		FUNC3(rq);
		return NULL;
	}

	return rq;
}