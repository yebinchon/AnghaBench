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
struct request_queue {struct i2o_block_device* queuedata; } ;
struct request {int /*<<< orphan*/  cmd_flags; struct i2o_block_request* special; } ;
struct i2o_block_request {struct request* req; struct i2o_block_device* i2o_blk_dev; } ;
struct i2o_block_device {int dummy; } ;

/* Variables and functions */
 int BLKPREP_DEFER ; 
 int BLKPREP_KILL ; 
 int BLKPREP_OK ; 
 scalar_t__ FUNC0 (struct i2o_block_request*) ; 
 int /*<<< orphan*/  REQ_DONTPREP ; 
 struct i2o_block_request* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct request_queue *q, struct request *req)
{
	struct i2o_block_device *i2o_blk_dev = q->queuedata;
	struct i2o_block_request *ireq;

	if (FUNC4(!i2o_blk_dev)) {
		FUNC3("block device already removed\n");
		return BLKPREP_KILL;
	}

	/* connect the i2o_block_request to the request */
	if (!req->special) {
		ireq = FUNC1();
		if (FUNC0(ireq)) {
			FUNC2("unable to allocate i2o_block_request!\n");
			return BLKPREP_DEFER;
		}

		ireq->i2o_blk_dev = i2o_blk_dev;
		req->special = ireq;
		ireq->req = req;
	}
	/* do not come back here */
	req->cmd_flags |= REQ_DONTPREP;

	return BLKPREP_OK;
}