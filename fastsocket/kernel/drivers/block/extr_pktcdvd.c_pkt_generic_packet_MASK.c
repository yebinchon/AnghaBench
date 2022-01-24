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
struct request_queue {int dummy; } ;
struct request {int timeout; scalar_t__ errors; int /*<<< orphan*/  q; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  cmd_type; int /*<<< orphan*/  cmd; int /*<<< orphan*/  cmd_len; } ;
struct pktcdvd_device {TYPE_1__* bdev; } ;
struct packet_command {scalar_t__ data_direction; scalar_t__ quiet; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  buflen; int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  bd_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDROM_PACKET_SIZE ; 
 scalar_t__ CGC_DATA_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENODEV ; 
 int HZ ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REQ_QUIET ; 
 int /*<<< orphan*/  REQ_TYPE_BLOCK_PC ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 struct request_queue* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC3 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct request_queue*,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pktcdvd_device *pd, struct packet_command *cgc)
{
	struct request_queue *q = FUNC1(pd->bdev);
	struct request *rq;
	int ret = 0;

	rq = FUNC3(q, (cgc->data_direction == CGC_DATA_WRITE) ?
			     WRITE : READ, __GFP_WAIT);
	if (!rq)
		return -ENODEV;

	if (cgc->buflen) {
		if (FUNC5(q, rq, cgc->buffer, cgc->buflen, __GFP_WAIT))
			goto out;
	}

	rq->cmd_len = FUNC0(cgc->cmd[0]);
	FUNC6(rq->cmd, cgc->cmd, CDROM_PACKET_SIZE);

	rq->timeout = 60*HZ;
	rq->cmd_type = REQ_TYPE_BLOCK_PC;
	if (cgc->quiet)
		rq->cmd_flags |= REQ_QUIET;

	FUNC2(rq->q, pd->bdev->bd_disk, rq, 0);
	if (rq->errors)
		ret = -EIO;
out:
	FUNC4(rq);
	return ret;
}