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
struct request_queue {int dummy; } ;
struct request {int* cmd; int cmd_len; int /*<<< orphan*/  timeout; int /*<<< orphan*/  cmd_type; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_DEFAULT_SG_TIMEOUT ; 
 int ENODEV ; 
 int /*<<< orphan*/  REQ_TYPE_BLOCK_PC ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 int FUNC0 (struct request_queue*,struct gendisk*,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 

__attribute__((used)) static int FUNC3(struct request_queue *q, struct gendisk *bd_disk,
			      int cmd, int data)
{
	struct request *rq;
	int err;

	rq = FUNC1(q, WRITE, __GFP_WAIT);
	if (!rq)
		return -ENODEV;
	rq->cmd_type = REQ_TYPE_BLOCK_PC;
	rq->timeout = BLK_DEFAULT_SG_TIMEOUT;
	rq->cmd[0] = cmd;
	rq->cmd[4] = data;
	rq->cmd_len = 6;
	err = FUNC0(q, bd_disk, rq, 0);
	FUNC2(rq);

	return err;
}