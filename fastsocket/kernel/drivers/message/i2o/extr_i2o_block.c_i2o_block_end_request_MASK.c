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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {struct request_queue* q; struct i2o_block_request* special; } ;
struct i2o_block_request {int /*<<< orphan*/  queue; struct i2o_block_device* i2o_blk_dev; } ;
struct i2o_block_device {int /*<<< orphan*/  open_queue_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (struct request*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2o_block_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2o_block_request*) ; 
 scalar_t__ FUNC5 (struct i2o_block_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct request *req, int error,
				  int nr_bytes)
{
	struct i2o_block_request *ireq = req->special;
	struct i2o_block_device *dev = ireq->i2o_blk_dev;
	struct request_queue *q = req->q;
	unsigned long flags;

	if (FUNC0(req, error, nr_bytes))
		if (error)
			FUNC1(req, -EIO);

	FUNC7(q->queue_lock, flags);

	if (FUNC5(dev)) {
		dev->open_queue_depth--;
		FUNC6(&ireq->queue);
	}

	FUNC2(q);

	FUNC8(q->queue_lock, flags);

	FUNC4(ireq);
	FUNC3(ireq);
}