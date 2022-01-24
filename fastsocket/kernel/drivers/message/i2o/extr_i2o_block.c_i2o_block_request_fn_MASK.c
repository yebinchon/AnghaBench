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
struct request_queue {int dummy; } ;
struct request {scalar_t__ cmd_type; struct i2o_block_request* special; } ;
struct i2o_block_request {TYPE_1__* i2o_blk_dev; } ;
struct i2o_block_delayed_request {int /*<<< orphan*/  work; struct request_queue* queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  event_queue; } ;
struct TYPE_3__ {unsigned int open_queue_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int I2O_BLOCK_MAX_OPEN_REQUESTS ; 
 int /*<<< orphan*/  I2O_BLOCK_RETRY_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ REQ_TYPE_FS ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  i2o_block_delayed_request_fn ; 
 TYPE_2__ i2o_block_driver ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2o_block_delayed_request*) ; 
 struct i2o_block_delayed_request* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct request_queue *q)
{
	struct request *req;

	while (!FUNC3(q)) {
		req = FUNC2(q);
		if (!req)
			break;

		if (req->cmd_type == REQ_TYPE_FS) {
			struct i2o_block_delayed_request *dreq;
			struct i2o_block_request *ireq = req->special;
			unsigned int queue_depth;

			queue_depth = ireq->i2o_blk_dev->open_queue_depth;

			if (queue_depth < I2O_BLOCK_MAX_OPEN_REQUESTS) {
				if (!FUNC6(req)) {
					FUNC4(req);
					continue;
				} else
					FUNC9("transfer error\n");
			}

			if (queue_depth)
				break;

			/* stop the queue and retry later */
			dreq = FUNC8(sizeof(*dreq), GFP_ATOMIC);
			if (!dreq)
				continue;

			dreq->queue = q;
			FUNC0(&dreq->work,
					  i2o_block_delayed_request_fn);

			if (!FUNC10(i2o_block_driver.event_queue,
						&dreq->work,
						I2O_BLOCK_RETRY_TIME))
				FUNC7(dreq);
			else {
				FUNC5(q);
				break;
			}
		} else {
			FUNC4(req);
			FUNC1(req, -EIO);
		}
	}
}